//
//  CoinModel.swift
//  CoinService
//
//  Created by Thiago Gasbarro Jesus on 22/01/21.
//

import Foundation

struct Coin: Codable{
    let results: [CoinModel]
    
    enum CodingKeys: String, CodingKey {
    case results
 }
}

// MARK: - CoinElement
struct CoinModel: Codable {
    let assetID, name: String?
    let typeIsCrypto: Int?
    let dataStart, dataEnd, dataQuoteStart, dataQuoteEnd: String?
    let dataOrderbookStart, dataOrderbookEnd, dataTradeStart, dataTradeEnd: String?
    let dataSymbolsCount: Int?
    let volume1HrsUsd, volume1DayUsd: Double?
    let volume1MthUsd: Double?
    let priceUsd: Double?
    let idIcon: String?

    enum CodingKeys: String, CodingKey {
        case assetID = "asset_id"
        case name
        case typeIsCrypto = "type_is_crypto"
        case dataStart = "data_start"
        case dataEnd = "data_end"
        case dataQuoteStart = "data_quote_start"
        case dataQuoteEnd = "data_quote_end"
        case dataOrderbookStart = "data_orderbook_start"
        case dataOrderbookEnd = "data_orderbook_end"
        case dataTradeStart = "data_trade_start"
        case dataTradeEnd = "data_trade_end"
        case dataSymbolsCount = "data_symbols_count"
        case volume1HrsUsd = "volume_1hrs_usd"
        case volume1DayUsd = "volume_1day_usd"
        case volume1MthUsd = "volume_1mth_usd"
        case priceUsd = "price_usd"
        case idIcon = "id_icon"
    }
}

// MARK: - TimeJSONElement
struct TimeJSONElement: Codable {
    let periodID: String?
    let lengthSeconds, lengthMonths, unitCount: Int?
    let unitName, displayName: String?

    enum CodingKeys: String, CodingKey {
        case periodID = "period_id"
        case lengthSeconds = "length_seconds"
        case lengthMonths = "length_months"
        case unitCount = "unit_count"
        case unitName = "unit_name"
        case displayName = "display_name"
    }
}

typealias TimeJSON = [TimeJSONElement]
