# 🚀 Bot Setup Instructions

Welcome to the bot setup guide! This guide is designed to be beginner-friendly — just **follow the steps**, and your bot will be ready to run with **minimal terminal use**.

> 📱 [If you're using Termux on mobile, check this guide](https://github.com/MeoMunDep/Guides-for-using-my-script-on-termux)

---

## Table of Contents

1. [Prerequisites](#prerequisites)
2. [Installation Steps](#installation-steps)
3. [Configuration Files](#configuration-files)
4. [Running the Bot](#running-the-bot)
5. [Contact and Support](#contact-and-support)

---

## Prerequisites

Make sure you have the following installed:

- **Node.js** (Recommended: `v22.11.0`)
- **npm** (Comes with Node.js)

📦 Download from here: [Node.js Installer](https://t.me/KeoAirDropFreeNe/257/1462)

---

## Installation Steps

<details>
<summary>✅ 1. Clone the Bot Repository</summary>

If you haven't installed Git, [download it here](https://git-scm.com/).

```bash
git clone https://github.com/MeoMunDep/Mizu-Testnet.git
cd Mizu-Testnet
```

</details>

<details>
<summary>✅ 2. Edit Configuration Files</summary>

Set up the following files **before running the bot** (details below):

- `configs.json`
- `privateKeys.txt`
- `proxies.txt` (optional)

</details>

---

## Configuration Files

<details open>
<summary>📜 <strong>1. configs.json</strong> - Bot Settings</summary>

```json
{
  "proxyMode": "static",
  "skipInvalidProxy": false,
  "delayEachAccount": [1, 1],
  "timeToRestartAllAccounts": 86400,
  "howManyAccountsRunInOneTime": 1,

  "faucet": { "enable": true },

  "bridge": {
    "sepoliaToDoma": {
      "enable": true,
      "valueAmount": [0.0001, 0.0002],
      "txCount": [1, 3]
    },
    "domaToSepolia": {
      "enable": true,
      "valueAmount": [0.0001, 0.0002],
      "txCount": [1, 3]
    }
  },

  "buyTokens": {
    "enable": true,
    "amountUSDT": [100, 200]
  },

  "sellTokens": {
    "enable": true,
    "amountToken": [0.01, 0.02]
  }
}
```

| Field                              | Type     | Description                                                            |
| ---------------------------------- | -------- | ---------------------------------------------------------------------- |
| `proxyMode`                        | string   | Proxy usage mode. Example: `"static"`, `"rotate"`, `"none"`.           |
| `skipInvalidProxy`                 | boolean  | Skip and ignore any proxy that fails.                                  |
| `delayEachAccount`                 | number[] | Delay between each account in **seconds** (random within range).       |
| `timeToRestartAllAccounts`         | number   | Restart bot process after this many seconds (`0` to disable).          |
| `howManyAccountsRunInOneTime`      | number   | Max number of accounts running in parallel.                            |
| `faucet.enable`                    | boolean  | Whether to run faucet claim automatically.                             |
| `bridge.sepoliaToDoma.enable`      | boolean  | Enable bridge transactions **from Sepolia → Doma**.                    |
| `bridge.sepoliaToDoma.valueAmount` | number[] | Min–Max ETH amount to bridge **from Sepolia to Doma**.                 |
| `bridge.sepoliaToDoma.txCount`     | number[] | Min–Max number of transactions to perform for Sepolia → Doma bridging. |
| `bridge.domaToSepolia.enable`      | boolean  | Enable bridge transactions **from Doma → Sepolia**.                    |
| `bridge.domaToSepolia.valueAmount` | number[] | Min–Max ETH amount to bridge **from Doma to Sepolia**.                 |
| `bridge.domaToSepolia.txCount`     | number[] | Min–Max number of transactions to perform for Doma → Sepolia bridging. |
| `buyTokens.enable`                 | boolean  | Whether to auto-buy tokens.                                            |
| `buyTokens.amountUSDT`             | number[] | Min–Max amount of USDT used to buy tokens.                             |
| `sellTokens.enable`                | boolean  | Whether to auto-sell tokens.                                           |
| `sellTokens.amountToken`           | number[] | Min–Max amount of tokens to sell.                                      |

---

</details>

<details>
<summary>🗂️ 2. privateKeys.txt - Wallet List</summary>

Each line is one private key:

```
privatekey1
privatekey2
privatekey3
```

</details>

<details>
<summary>🌐 3. proxies.txt - Proxy List (Optional)</summary>

💡 [Get free/paid proxies from here](https://www.webshare.io/?referral_code=4l5kb3glsce7)

Supported formats:

```
host:port
protocol://host:port
protocol://user:pass@host:port
```

</details>

---

## Running the Bot

<details open>
<summary>▶️ For Windows Users</summary>

Just **double click** on `run.bat`

✅ This script will:

- Install all required modules
- Run the bot automatically

> You **don’t need to type any command manually**!

</details>

<details>
<summary>▶️ For Linux/macOS Users</summary>

Run this command in terminal:

```bash
./run.sh
```

Or make it executable and double-click:

```bash
chmod +x run.sh
./run.sh
```

</details>

---

## Contact and Support

- **Doma-Mizu Testnet** [Link](https://mizu-testnet.doma.xyz/)
- **Support me via Donate**: [Here](https://t.me/KeoAirDropFreeNe/312/27801)
- **Work Contact**: [@MeoMunDep](https://t.me/MeoMunDep)
- **Support Group**: [Join here](https://t.me/KeoMunDep)
- **Updates Channel**: [View channel](https://t.me/KeoAirDropFreeNee)
- **YouTube**: [@keoairdropfreene](https://www.youtube.com/@keoairdropfreene)
- **Instagram**: [@meomundep](https://www.instagram.com/meomundep)
- **TikTok**: [@meomundep](https://www.tiktok.com/@meomundep)

---

⚠️ **Disclaimer**: This code is provided "as is" without any warranties. Use it at your own risk. You are solely responsible for any consequences arising from its use. Redistribution or sale of this code in any form is strictly prohibited.

✨ Thank you for using the bot, hope you earn from my scripts! Good luck! 🚀
