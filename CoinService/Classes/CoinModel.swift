//
//  CoinModel.swift
//  CoinService
//
//  Created by Thiago Gasbarro Jesus on 22/01/21.
//

struct CoinModel  {
    let assetID, name: String?
    let exchangeID: String?
    let volume1HrsUsd, volume1DayUsd, volume1MthUsd, priceUsd: Double?
    let idIcon: String?

}

extension CoinModel {
    init() {
        
        self.assetID = ""
        self.name = ""
        self.exchangeID = ""
        self.volume1HrsUsd = 0.0
        self.volume1DayUsd = 0.0
        self.volume1MthUsd = 0.0
        self.priceUsd = 0.0
        self.idIcon = ""
    }
}


