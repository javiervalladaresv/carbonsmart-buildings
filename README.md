# CarbonSmart Buildings 
> **An EVM-compatible smart contract and IoT framework on LACNet designed to mitigate negative environmental externalities in smart buildings through microeconomic mechanism design and programmable rewards.**

---

## 1. Solution Summary (Abstract)
CarbonSmart Buildings addresses the significant carbon emissions and energy inefficiencies within the building sector—which accounts for approximately 37% of global energy-related CO₂ emissions—through an EVM-compatible smart contract protocol deployed on the LACNet blockchain. 

By integrating IoT sensors and automated data flows, the platform monitors real-time energy consumption and emissions, effectively collapsing high monitoring and transaction costs to near zero. When a building’s administration successfully reduces its energy footprint below a certified historical baseline, the smart contracts automatically mint and allocate programmable **Green Carbon Tokens (GCT)** to their wallet. 

This system operates as a self-executing economic incentive mechanism that internalizes the negative environmental externalities of energy waste, turning emission reduction into a private economic benefit and establishing a trusted, auditable path toward sustainable urban development.

---

## 2. Alignment with Hackathon Objectives
The protocol is strategically engineered to directly advance the hackathon's core directive—*“Innovando por un Futuro Sostenible”*—by leveraging decentralized architecture to foster environmental sustainability and public-goods provisioning:

*   **Objective 1 - Global Specification Automation (GSA):** Employs Token Taxonomy Framework (TTF) compatible Smart Contracts to automate incentive rules based on verifiable data, removing arbitrary human intervention.
*   **Objective 2 - Multi-Nation Token Creation and Management (MNT):** Establishes an interoperable Green Carbon Token (GCT) ecosystem capable of managing rewards across multiple municipal jurisdictions, providing full cryptographic traceability.
*   **Objective 3 - International Compliance and Reporting (ICR):** Generates immutable energy performance records stored via decentralized proofs (IPFS hashes), simplifying regulatory auditing and international sustainability compliance.

---

## 3. Project Name
The project is formally designated **CarbonSmart Buildings**. The name communicates the system's core mechanism-design logic: integrating smart building automation ("CarbonSmart") with decentralized ledger technology ("Buildings") to align environmental targets with economic incentives. As a corporate Web3 identity, CarbonSmart Buildings signals to administrators, investors, and municipal evaluators that the project is an incentive-compatible economic mechanism designed to correct market failures, not merely an energy-saving awareness campaign.

---

## 4. Team Members and Roles
The team is composed of four members from **Universidad Nacional Mayor de San Marcos (UNMSM)**. Roles were allocated according to comparative advantage to minimize coordination costs and maximize production efficiency:

| Team Member | Role | Key Responsibilities |
| :--- | :--- | :--- |
| **Javier Gonzalo Valladares Vergara** | Project Leader & Economic Strategy | General project management, microeconomic model design, market failure analysis, and coordination of the hackathon proposal. |
| **Daniel Nieto Ramos** | Technical Leader & Blockchain Architect | Smart Contract development in Solidity, token architecture (TTF) design, and LACNet EVM implementation. |
| **Terry Jan Pier Quispe Paredes** | IoT Engineer & Data Integration | Smart sensor modeling, database to blockchain integration, and simulation of automated oracle feeds. |
| **Christopher Ruben Venegas Navarro** | Sustainability & Environmental Compliance | Carbon footprint calculation logic, integration with UN Sustainable Development Goals (SDGs), and environmental reporting metrics. |

---

## 5. Problem Description & Market Failure Analysis
Urban growth in metropolitan areas like Lima has exponentially increased energy demand in public and private buildings, resulting in high indirect CO₂ emissions and inflated operational costs. From a microeconomic standpoint, this issue is a classic case of **market failure** driven by three core pillars:

1.  **Negative Externalities:** Excessive fossil-based electricity consumption increases greenhouse gas emissions. The social cost of these emissions (climate degradation, public health risks) is not borne by the building administrators, meaning the private cost of energy is systematically lower than its true social cost. Consequently, society over-consumes fossil energy.
2.  **Information Asymmetry:** Tenants, building administrators, and municipal regulators face a structural bidirectional information gap. Without an immutable, unified ledger, there is no reliable way to verify whether a building's claimed carbon reductions are genuine or merely *greenwashing* (the "Market for Lemons" problem).
3.  **High Transaction and Monitoring Costs:** Traditional energy audits are expensive, intermittent, and require manual, third-party technical inspections. These frictional administrative costs prevent voluntary agreements and efficiency optimizations from occurring spontaneously.

### Dimensions of Market Failure in Buildings

| Market Dimension | Current Inefficient Status Quo | Economic Impact |
| :--- | :--- | :--- |
| **Externalities** | Unregulated and excessive fossil-based energy usage in buildings. | Uncompensated social costs, high carbon emissions, and climate risks. |
| **Transaction Costs** | Expensive manual audits and lack of automated incentive systems. | Suboptimal investment in green technologies (solar, LEDs, smart HVAC). |
| **Information Asymmetry** | Lack of continuous, verifiable, and public emissions data. | Adverse selection, trust deficits, and risk of corporate greenwashing. |

---

## 6. Technologies Used & Technical Justification
The technology stack was selected to minimize development complexity and long-term marginal costs while maintaining high execution trust:

| Technology | Role in the Project | Technical / Microeconomic Justification |
| :--- | :--- | :--- |
| **Solidity & EVM** | Smart Contract Core | Ensures trustless, immutable, and tamper-proof execution of reward rules, eliminating middleman enforcement costs. |
| **LNet (LACNet)** | Blockchain Network | A zero-cost node infrastructure that drastically reduces barrier to entry and fixed startup costs for building administrators. |
| **IoT-to-Oracle Simulation** | Data Feed Automator | Streamlines energy data directly to the smart contracts, eliminating human error, data manipulation, and manual audit costs. |
| **ERC-20 Standard** | Token Architecture | Utilizes a globally accepted token framework, decreasing adoption and integration costs for secondary green marketplaces. |

> **Technical Note — Gas Optimization:** The core logic within `EnergyRewardManager.sol` is designed to respect LACNet's per-block gas limits. It employs O(1) mapping lookups for building registers instead of looping through unbound storage arrays. State writes are strictly constrained to reward emissions logic, mitigating network congestion and preventing a digital "tragedy of the commons" over shared LNet block space.

---

## 7. Project Links
*   **Pitch Deck Link:** [Insert Your Pitch Deck Link Here]
*   **GitHub Repository Link:** [Insert Your Repository Link Here]
*   **Video Demo Link (2–5 minutes):** [Insert Your Video Demo Link Here]

---

## 8. Justification of Impact and Scalability
*   **Information Asymmetry Solution (Signaling Theory):** By recording energy consumption and corresponding GCT rewards immutably on-chain, CarbonSmart Buildings functions as a credible, costly-to-fake **signaling mechanism** (Spence, 1973). Administrators can present their GCT balance as a reliable, audited proof of genuine sustainability, unlocking green certifications and tax incentives.
*   **Economic Impact (Pigouvian Subsidy):** The automatically minted GCT acts as an automated Pigouvian subsidy, internalizing the positive externalities of energy conservation. By linking the tokens directly to utility (discounts on clean energy technologies), the private economic incentive of reducing emissions is aligned with the social optimum.
*   **Scalability (Near-Zero Marginal Costs):** Because the LNet framework provides zero-cost transaction fees and the system does not require heavy physical infrastructure per onboarding node, the marginal cost of scaling to new buildings is virtually zero ($MC \to 0$). This allows the platform to seamlessly scale from a university-campus pilot to hospitals, hotels, and corporate complexes across Latin America.

---

## 9. Future Roadmap & Post-Hackathon Projection

### 📍 Phase 1: Technical Rigor & Security (Q3 2025)
*   **Objective:** Refine contract execution and test simulated IoT pipelines.
*   **Deliverables:** Run security audits on the Solidity codebase using static analysis tools and optimize gas-efficiency parameters under extreme LNet traffic simulations.
*   **Success Metric:** Zero critical contract vulnerabilities; average gas cost reduced by an additional 10%.

### 📍 Phase 2: Local Market Validation (Q4 2025)
*   **Objective:** Launch a physical pilot to test the incentive mechanism.
*   **Deliverables:** Partner with a university pavilion or commercial building to integrate real energy meters with the Python-web3 gateway simulation.
*   **Success Metric:** Successfully onboard 1 demonstration building and automate GCT minting over 90 days.

### 📍 Phase 3: Regional Scaling & Financial Utility (2026+)
*   **Objective:** Integrate the token with a broader sustainable vendor network.
*   **Deliverables:** Establish agreements with local solar panel providers and LED distributors to accept GCT as partial payment, turning the digital token into a tangible, liquid green asset.
*   **Success Metric:** Integration with at least 2 clean-tech vendors and expanding the pilot program to 10 buildings.
