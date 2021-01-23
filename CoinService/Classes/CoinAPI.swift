//
//  CoinAPI.swift
//  CoinService
//
//  Created by Thiago Gasbarro Jesus on 21/01/21.
//

import Foundation
import Alamofire
import CoreData

class CoinAPIResquest {


    struct APIData {
            static let Main: String = "https://rest.coinapi.io/v1"
            static let apiKey: String = "?apikey=FFC56E47-B89E-4FF6-98BB-06C4E5D4F279"
            static let url = "\(APIData.Main)/assets/BTC\(APIData.apiKey)"
        }
    
func getAssetBTC(_ completion: @escaping ([CoinModel]) -> Void) {
    
    Alamofire.request(APIData.url, method: .get).responseJSON { ( response ) in
        switch response.result {
        case .success:
            guard let dataRecovered = response.data else { return }
            guard let start = try? JSONDecoder().decode(Coin.self, from: dataRecovered) else { return }
            let coin = start.results
            completion(coin)
            print("start")
            break
        case .failure:
            print(response.error!)
            break
        }
    }
}
    }
