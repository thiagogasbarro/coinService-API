//
//  CoinModel.swift
//  CoinService
//
//  Created by Thiago Gasbarro Jesus on 22/01/21.
//

import Foundation

// MARK: - Coin
struct CoinModel: Codable {
    let assetIDBase: String?
    let rates: [Rate]?

    enum CodingKeys: String, CodingKey {
        case assetIDBase = "asset_id_base"
        case rates
    }
}

// MARK: - Rate
struct Rate: Codable {
    let time, assetIDQuote: String?
    let rate: Double?

    enum CodingKeys: String, CodingKey {
        case time
        case assetIDQuote = "asset_id_quote"
        case rate
    }
}
