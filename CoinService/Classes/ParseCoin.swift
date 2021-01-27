//
//  ParseCoin.swift
//  CoinService
//
//  Created by Thiago Gasbarro Jesus on 27/01/21.
//

class ParseCoin {
    func parseAllCoins(response: [String: Any]?) -> CoinModel {
        
        guard let response = response else { return CoinModel() }
        
        let assetID = response["assetID"] as? String
        let name = response["name"] as? String
        let exchangeID = response["exchangeID"] as? String
        let volume1HrsUsd = response["volume1HrsUsd"] as? Double
        let volume1DayUsd = response["volume1DayUsd"] as? Double
        let volume1MthUsd = response["volume1MthUsd"] as? Double
        let priceUsd = response["priceUsd"] as? Double
        let idIcon = response["idIcon"] as? String
        
        
        return CoinModel(assetID: assetID, name: name, exchangeID: exchangeID, volume1HrsUsd: volume1HrsUsd, volume1DayUsd: volume1DayUsd, volume1MthUsd: volume1MthUsd, priceUsd: priceUsd, idIcon: idIcon)
    }
}

