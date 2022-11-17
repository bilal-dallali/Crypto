//
//  Data.swift
//  Crypto
//
//  Created by Bilal Dallali on 17/11/2022.
//

import Foundation

struct CryptoCurrency {
    let name: String
    let symbol: String
    let iconName: String
    let value: Float
    let evolution: Float
}

let cryptoList = [
    CryptoCurrency(name: "Bitcoin", symbol: "BTC", iconName: "bitcoin-btc-logo", value: 34065.26, evolution: +2.56),
    CryptoCurrency(name: "Etherum", symbol: "ETH", iconName: "ethereum-eth-logo", value: 2167.96, evolution: +1.26),
    CryptoCurrency(name: "Tether", symbol: "USDT", iconName: "tether-usdt-logo", value: 0.94, evolution: -1.96),
    CryptoCurrency(name: "Binance USD", symbol: "BUSD", iconName: "binance-usd-busd-logo", value: 289.75, evolution: -5.67),
    CryptoCurrency(name: "Cardano", symbol: "ADA", iconName: "cardano-ada-logo", value: 0.49, evolution: -19.56),
    CryptoCurrency(name: "Solana", symbol: "SOL", iconName: "solana-sol-logo", value: 48.76, evolution: +1.58),
    CryptoCurrency(name: "Litecoin", symbol: "LTC", iconName: "litecoin-ltc-logo", value: 56.47, evolution: +1.53)
]
