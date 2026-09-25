
# 🏙️ Surabaya Bingo

 > An on-chain urban exploration and gamified tourism dApp built on BOT Chain.

 Surabaya Bingo transforms city exploration into an interactive on-chain scavenger hunt. Designed for Surabaya, the dApp encourages players to discover cultural landmarks, local culinary destinations, public spaces, events, and transportation experiences through a 3×3 Bingo board.

 Players complete real-world challenges and record their progress on-chain. Completing a full row, column, or diagonal unlocks a Bingo reward.

---

 ## 🌟 Key Features

 - **3×3 Interactive Bingo Grid** — 9 curated exploration challenges across Surabaya.
- **On-Chain Challenge Completion** — Completed challenges are recorded directly on BOT Chain through the `completeChallenge(uint256 id)` smart contract function.
- **Bingo Line Detection** — The application tracks completed rows, columns, and diagonals.
- **Live Progress Dashboard** — Displays completed challenges and the number of completed Bingo lines.
- **Wallet Integration** — Connects to MetaMask using the Ethers.js v6 BrowserProvider.
- **Automatic Network Check** — Detects the connected network and prompts users to switch to the required BOT Chain network.
- **Reward System** — Completing Bingo lines unlocks corresponding rewards in the application's reward section.
- **Reward Details & QR Redemption** — Users can view reward information and a QR-style redemption section for participating venues.
- **Lightweight Web3 Frontend** — Built as a single HTML file with no build system or framework required.

---

 ## 🛠️ Tech Stack

 | Component | Technology |
| --- | --- |
| Smart Contract | Solidity `^0.8.20` |
| Blockchain | BOT Chain |
| Frontend | HTML5, CSS3, Vanilla JavaScript |
| Web3 Library | Ethers.js `v6.13.5` |
| Wallet | MetaMask |
| Hosting | GitHub Pages |
| Architecture | Zero-build static Web3 dApp |

---

 ## 🏗️ Architecture

 City Bingo consists of two primary components:

 ### Smart Contract

 The Solidity smart contract stores player challenge progress and provides the functions required by the frontend.

 Key functions include:

 - `completeChallenge(uint256 id)` — Records a completed challenge for the connected wallet.
- `isCompleted(address player, uint256 id)` — Checks whether a specific challenge has been completed by a wallet.
- `hasBingo(address player)` — Checks whether the player has completed a Bingo pattern.

 ### Frontend

 The frontend is implemented with vanilla HTML, CSS, and JavaScript.

 The application:

 1. Connects to MetaMask.
2. Checks the connected BOT Chain network.
3. Reads challenge progress from the smart contract.
4. Allows users to submit challenge completion transactions.
5. Updates the Bingo board after transaction confirmation.
6. Calculates completed Bingo lines.
7. Displays unlocked rewards.

---

 ## 📋 Bingo Challenges

 The current 3×3 board contains nine exploration challenges:

 | # | Challenge |
| --- | --- |
| 1 | ☕ Visit Jl. Tunjungan |
| 2 | 📸 Take a photo on Perahu Kalimas |
| 3 | 🍜 Try local food at Pasar Atom |
| 4 | 🏛️ Visit a cultural spot |
| 5 | 🎪 Attend an event |
| 6 | 🛍️ Support a local business |
| 7 | 🌳 Visit Kota Lama |
| 8 | 🚶 Explore a new area |
| 9 | 🧑‍🤝‍🧑 Ride Bus SSCT with a friend |

A Bingo line consists of three completed squares arranged horizontally, vertically, or diagonally.

---

 ## 🎁 Reward System

 Players unlock rewards based on the number of completed Bingo lines.

 Current reward tiers include:

 | Bingo Lines | Reward |
| --- | --- |
| 1 | 🍔 F&B Voucher |
| 2 | ☕ Free Starbucks Drink |
| 3 | 🍕 Premium F&B Voucher |
| 4 | 🚌 Free SSCT Ticket |
| 5 | 🎟️ Surabaya Urban Culture Festival |
| 6 | 🎻 MANIFEST: Grand Orchestra featuring Raisa Anggiani |

Reward availability, participating venues, dates, and terms may vary.

---

 ## 🚀 Deployment Addresses

 | Network | Chain ID | Contract Address | Explorer |
| --- | --- | --- | --- |
| **BOT Chain Testnet** | `968` | `0x016052D388D5540d6b18cc30b53581A07Dbd6F88` | [View Contract](<https://scan.bohr.life/address/0x016052D388D5540d6b18cc30b53581A07Dbd6F88>) |
| **BOT Chain Mainnet** | `677` | `0xYOUR_MAINNET_CONTRACT_ADDRESS_HERE` | [View Contract](<https://scan.botchain.ai/address/0xYOUR_MAINNET_CONTRACT_ADDRESS_HERE>) |

> **Mainnet:** The mainnet contract address will be updated after the contract has been deployed to BOT Chain Mainnet.

---

 ## 🌐 Network Configuration

 ### BOT Chain Testnet

 | Parameter | Value |
| --- | --- |
| Network Name | BOT Chain Testnet |
| RPC URL | `https://rpc.bohr.life` |
| Chain ID | `968` |
| Chain ID (Hex) | `0x3C8` |
| Currency | `BOT` |
| Explorer | `https://scan.bohr.life/` |

### BOT Chain Mainnet

 | Parameter | Value |
| --- | --- |
| Network Name | BOT Chain Mainnet |
| RPC URL | `https://rpc.botchain.ai` |
| Chain ID | `677` |
| Chain ID (Hex) | `0x2A5` |
| Currency | `BOT` |
| Explorer | `https://scan.botchain.ai/` |

---

 ## 🎮 How to Play

 ### 1\. Connect Your Wallet

 Click **Connect Wallet** and connect MetaMask.

 The dApp checks the connected blockchain network before interacting with the smart contract.

 ### 2\. Explore Surabaya

 Choose an available challenge from the 3×3 Bingo board and visit the corresponding location or participate in the specified activity.

 ### 3\. Verify the Challenge

 Click **Verify Visit** on the selected challenge.

 The challenge is then prepared for on-chain submission.

 ### 4\. Claim On-Chain

 Click **Claim on-chain** and confirm the transaction in MetaMask.

 Once the transaction is confirmed, the challenge is permanently recorded for the connected wallet.

 ### 5\. Complete a Bingo Line

 Complete three challenges in a horizontal, vertical, or diagonal line.

 The application detects completed Bingo lines and unlocks the corresponding reward tier.

---

 ## 🔐 Wallet & Blockchain Flow

```
User
 │
 ▼
Connect MetaMask
 │
 ▼
Check BOT Chain Network
 │
 ▼
Read Challenge Progress
 │
 ▼
Explore Surabaya
 │
 ▼
Verify Challenge
 │
 ▼
completeChallenge(id)
 │
 ▼
BOT Chain
 │
 ▼
Transaction Confirmation
 │
 ▼
Update Bingo Board
 │
 ▼
Bingo Line Completed
 │
 ▼
Reward Unlocked
```

---

 ## 💻 Local Development

 ### 1\. Clone the Repository

```
git clone https://github.com/YOUR_USERNAME/city-bingo.git
cd city-bingo
```

 ### 2\. Start a Local HTTP Server

 Using Python:

```
python3 -m http.server 8000
```

 Or using Node.js:

```
npx serve .
```

 ### 3\. Open the Application

 Visit:

```
http://localhost:8000
```

 Make sure MetaMask is installed and configured with the required BOT Chain network.

---

 ## 📁 Project Structure

 The project uses a lightweight single-file architecture:

```
city-bingo/
├── index.html
└── README.md
```

 The `index.html` file contains:

 - HTML structure
- CSS styling
- Bingo board UI
- Reward interface
- Wallet connection logic
- Ethers.js integration
- Smart contract interaction

---

 ## 🔗 Smart Contract Integration

 The frontend communicates with the deployed contract using Ethers.js.

 Example contract configuration:

```
const CONTRACT_ADDRESS =
    "0x016052D388D5540d6b18cc30b53581A07Dbd6F88";

const BOT_CHAIN_ID = 968;

const CONTRACT_ABI = [
    "function completeChallenge(uint256 id)",
    "function isCompleted(address player, uint256 id) view returns (bool)",
    "function hasBingo(address player) view returns (bool)"
];
```

 The contract address and network configuration should be updated when moving from testnet to mainnet.

---

 ## 🧪 Testnet

 The current development version is configured for BOT Chain Testnet.

 **Testnet Contract:**

```
0x016052D388D5540d6b18cc30b53581A07Dbd6F88
```

 **Explorer:**

 https://scan.bohr.life/address/0x016052D388D5540d6b18cc30b53581A07Dbd6F88

---

 ## 🚀 Mainnet Deployment

 Before deploying to BOT Chain Mainnet:

 1. Obtain the required mainnet BOT for gas fees.
2. Deploy the smart contract to BOT Chain Mainnet.
3. Record the deployed contract address.
4. Update the frontend contract configuration.
5. Update the Mainnet contract address in this README.
6. Update the Mainnet Explorer link.
7. Test wallet connection and contract interaction on Mainnet.
8. Verify the deployed contract on the BOT Chain Explorer.

---

 ## 🎯 Project Goal

 City Bingo is designed to connect **real-world exploration with blockchain technology**.

 Instead of treating blockchain as a standalone financial layer, the project uses on-chain verification to create a persistent digital record of a user's participation in city exploration.

 The goal is to encourage:

 - 🏙️ Urban exploration
- 🏛️ Cultural discovery
- 🍜 Local culinary experiences
- 🛍️ Support for local businesses
- 🚌 Public transportation experiences
- 🤝 Social participation
- ⛓️ Meaningful blockchain adoption

---

 ## 📄 License

 This project is open-source and licensed under the MIT License.

---

 ## 🙏 Acknowledgements

 Built for the BOT Chain ecosystem.

 **Surabaya Bingo — Explore Surabaya. Complete the board. Get Bingo.**