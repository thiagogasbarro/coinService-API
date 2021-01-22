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

    let alamofireManager: SessionManager = {
        let configuration = URLSessionConfiguration.default
        configuration.timeoutIntervalForRequest = 10000
        configuration.timeoutIntervalForResource = 10000
        
        return SessionManager(configuration: configuration)
    }()

    struct CoinAPIURL {
            static let apiKey: String = "FFC56E47-B89E-4FF6-98BB-06C4E5D4F279"
            static let Main: String = "https://rest.coinapi.io/v1/exchangerate/BTC?apikey=\(apiKey)"
        }
    
    func getCoins(url: String?, completion:@escaping (_ response: ServerResponse) -> Void){
        let page = url == "" || url == nil ? CoinAPIURL.Main : url ?? ""
        
        alamofireManager.request(page, method: .get, parameters: nil, encoding: JSONEncoding.default).responseJSON { ( response ) in
            let statusCode = response.response?.statusCode
            switch response.result {
            case .success(let value):
                print(value)
                break
                
                
                
            case .failure(_):
                print("erro ao retornar dados")
            }
            }
        }
    }
