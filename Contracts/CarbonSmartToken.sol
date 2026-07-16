// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

// Importamos un estándar ERC20 simplificado y seguro de OpenZeppelin
import "@openzeppelin/contracts/token/ERC20/ERC20.sol";
import "@openzeppelin/contracts/access/Ownable.sol";

contract CarbonSmartToken is ERC20, Ownable {
    
    // Dirección del contrato EnergyRewardManager que tendrá permiso de emitir tokens
    address public rewardManager;

    constructor() ERC20("Green Carbon Token", "GCT") Ownable(msg.sender) {}

    // Modificador para restringir funciones solo al RewardManager o al dueño del contrato
    modifier onlyAuthorized() {
        require(msg.sender == owner() || msg.sender == rewardManager, "Not authorized to mint");
        _;
    }

    // Permite establecer qué dirección es el contrato de recompensas
    function setRewardManager(address _rewardManager) external onlyOwner {
        rewardManager = _rewardManager;
    }

    // Función para emitir nuevos tokens cuando un edificio ahorra energía
    function mint(address to, uint256 amount) external onlyAuthorized {
        _mint(to, amount);
    }
}
