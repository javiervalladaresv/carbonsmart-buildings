// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

import "./CarbonSmartToken.sol";
import "@openzeppelin/contracts/access/Ownable.sol";

contract EnergyRewardManager is Ownable {
    
    CarbonSmartToken public tokenContract;
    
    // Estructura para almacenar los datos de cada edificio inteligente
    struct Building {
        string name;
        address adminAddress;
        uint256 energyBaselineKWh; // Consumo base histórico del edificio
        uint256 lastRecordedConsumptionKWh;
        bool isRegistered;
    }

    // Mapeo para asociar una ID de edificio con sus datos estructurales
    mapping(uint256 => Building) public buildings;
    
    // Tasa de recompensa: Cuántos tokens GCT se dan por cada 1 kWh ahorrado
    uint256 public rewardRatePerKWh = 10 * 10**18; // 10 GCT (con 18 decimales)

    event BuildingRegistered(uint256 indexed buildingId, string name, address adminAddress);
    event ConsumptionReported(uint256 indexed buildingId, uint256 consumptionKWh, uint256 tokensRewarded);

    constructor(address _tokenAddress) Ownable(msg.sender) {
        tokenContract = CarbonSmartToken(_tokenAddress);
    }

    // 1. Función para registrar un nuevo edificio en la plataforma
    function registerBuilding(
        uint256 _buildingId, 
        string memory _name, 
        address _admin, 
        uint256 _baselineKWh
    ) external onlyOwner {
        require(!buildings[_buildingId].isRegistered, "Building already registered");
        
        buildings[_buildingId] = Building({
            name: _name,
            adminAddress: _admin,
            energyBaselineKWh: _baselineKWh,
            lastRecordedConsumptionKWh: 0,
            isRegistered: true
        });

        emit BuildingRegistered(_buildingId, _name, _admin);
    }

    // 2. Función que simula la entrada de datos del sensor IoT u Oráculo
    // Envía el consumo actual en kWh y calcula la recompensa de manera automática
    function submitEnergyData(uint256 _buildingId, uint256 _actualConsumptionKWh) external onlyOwner {
        Building storage building = buildings[_buildingId];
        require(building.isRegistered, "Building does not exist");

        uint256 tokensToReward = 0;

        // Lógica Microeconómica: Si el consumo real es MENOR al límite base (baseline)
        if (_actualConsumptionKWh < building.energyBaselineKWh) {
            uint256 kwhSaved = building.energyBaselineKWh - _actualConsumptionKWh;
            tokensToReward = kwhSaved * rewardRatePerKWh;
            
            // Se emiten los tokens directamente a la dirección del administrador del edificio
            tokenContract.mint(building.adminAddress, tokensToReward);
        }

        building.lastRecordedConsumptionKWh = _actualConsumptionKWh;

        emit ConsumptionReported(_buildingId, _actualConsumptionKWh, tokensToReward);
    }
    
    // Permite ajustar la tasa de recompensa si la economía del token lo requiere
    function setRewardRate(uint256 _newRate) external onlyOwner {
        rewardRatePerKWh = _newRate;
    }
}
