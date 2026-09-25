
# 🏙️ Surabaya Bingo

> An on-chain urban exploration and gamified tourism dApp built on BOT Chain.

Surabaya Bingo transforms city exploration into an interactive on-chain scavenger hunt. Designed for Surabaya, the dApp encourages players to discover cultural landmarks, local culinary destinations, public spaces, events, and transportation experiences through a 3×3 Bingo board.

Players complete real-world challenges and record their progress on-chain. Completing a full row, column, or diagonal unlocks a Bingo reward.

## 🌟 Key Features

- **3×3 Interactive Bingo Grid** — 9 curated exploration challenges across Surabaya.
- **On-Chain Challenge Completion** — Records completed challenges directly on BOT Chain.
- **Bingo Line Detection** — Tracks completed rows, columns, and diagonals.
- **Live Progress Dashboard** — Displays completed challenges and Bingo lines.
- **Wallet Integration** — Connects to MetaMask using Ethers.js v6.
- **Automatic Network Check** — Detects and switches to the required BOT Chain network.
- **Reward System** — Unlocks rewards based on completed Bingo lines.
- **Reward Details & QR Redemption** — Displays reward information and redemption details.
- **Lightweight Web3 Frontend** — Single HTML file with no build system or framework.

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

## 🏗️ Architecture

### Smart Contract

The Solidity smart contract stores player challenge progress.

Key functions:

- `completeChallenge(uint256 id)` — Records a completed challenge.
- `isCompleted(address player, uint256 id)` — Checks challenge completion.
- `hasBingo(address player)` — Checks whether the player has completed a Bingo pattern.

### Frontend

The frontend:

1. Connects to MetaMask.
2. Checks the BOT Chain network.
3. Reads challenge progress.
4. Submits challenge completion transactions.
5. Updates the Bingo board after confirmation.
6. Calculates completed Bingo lines.
7. Displays unlocked rewards.

## 📋 Bingo Challenges

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

## 🎁 Reward System

| Bingo Lines | Reward |
| --- | --- |
| 1 | 🍔 F&B Voucher |
| 2 | ☕ Free Starbucks Drink |
| 3 | 🍕 Premium F&B Voucher |
| 4 | 🚌 Free SSCT Ticket |
| 5 | 🎟️ Surabaya Urban Culture Festival |
| 6 | 🎻 MANIFEST: Grand Orchestra featuring Raisa Anggiani |

Reward availability, participating venues, dates, and terms may vary.

## 🚀 Deployment
### BOT Chain Mainnet

| Parameter | Value |
| --- | --- |
| Network | BOT Chain Mainnet |
| Chain ID | `677` |
| Chain ID (Hex) | `0x2A5` |
| RPC URL | `https://rpc.botchain.ai` |
| Currency | `BOT` |
| Contract | `0xCb144645fc84b800f0C07c6032eDD120bEFCbe64` |
| Explorer | https://scan.botchain.ai/address/0xCb144645fc84b800f0C07c6032eDD120bEFCbe64 |

### BOT Chain Testnet

| Parameter | Value |
| --- | --- |
| Network | BOT Chain Testnet |
| Chain ID | `968` |
| Chain ID (Hex) | `0x3C8` |
| RPC URL | `https://rpc.bohr.life` |
| Currency | `BOT` |
| Contract | `0x016052D388D5540d6b18cc30b53581A07Dbd6F88` |
| Explorer | https://scan.bohr.life/address/0x016052D388D5540d6b18cc30b53581A07Dbd6F88 |

The smart contract is currently deployed on BOT Chain Mainnet, and the frontend is configured to use the Mainnet deployment.

## 🔗 Smart Contract Integration

The frontend uses Ethers.js to communicate with the deployed contract.

```javascript
const CONTRACT_ADDRESS =
    "0xCb144645fc84b800f0C07c6032eDD120bEFCbe64";

const BOT_CHAIN_ID = 677;

const CONTRACT_ABI = [
    "function completeChallenge(uint256 id)",
    "function isCompleted(address player, uint256 id) view returns (bool)",
    "function hasBingo(address player) view returns (bool)"
];
````

 ## 🎮 How to Play

 ### 1\. Connect Your Wallet

 Click **Connect Wallet** and connect MetaMask. The dApp checks the connected network.

 ### 2\. Explore Surabaya

 Choose a challenge from the 3×3 Bingo board and complete the required real-world activity.

 ### 3\. Verify & Claim

 Click **Verify Visit**, then **Claim on-chain** and confirm the transaction in MetaMask.

 ### 4\. Complete a Bingo Line

 Complete three challenges horizontally, vertically, or diagonally to unlock a reward.


 ## 🔐 Wallet & Blockchain Flow

```
Connect MetaMask
       │
       ▼
Check BOT Chain
       │
       ▼
Read Progress
       │
       ▼
Explore Surabaya
       │
       ▼
Claim Challenge
       │
       ▼
BOT Chain Transaction
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

 ## 💻 Local Development

 Clone the repository:

```
git clone https://github.com/YOUR_USERNAME/city-bingo.git
cd city-bingo
```

 Start a local HTTP server:

```
python3 -m http.server 8000
```

 Or:

```
npx serve .
```

 Then open:

```
http://localhost:8000
```

 Make sure MetaMask is installed and configured with BOT Chain.


 ## 📁 Project Structure

```
city-bingo/
├── index.html
├── icon.png
└── README.md
```

 The `index.html` contains the complete frontend, including the UI, wallet connection, Ethers.js integration, and smart contract interaction.


 ## 🎯 Project Goal

 City Bingo connects **real-world exploration with blockchain technology** by creating a persistent on-chain record of player participation.

 The project aims to encourage:

 - 🏙️ Urban exploration
- 🏛️ Cultural discovery
- 🍜 Local culinary experiences
- 🛍️ Support for local businesses
- 🚌 Public transportation experiences
- 🤝 Social participation
- ⛓️ Meaningful blockchain adoption


 ## 📄 License

 This project is open-source and licensed under the MIT License.


 ## 🙏 Acknowledgements

 Built for the BOT Chain ecosystem.

 **Surabaya Bingo — Explore Surabaya. Complete the board. Get Bingo.**