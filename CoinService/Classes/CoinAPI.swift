//
//  CoinAPI.swift
//  CoinService
//
//  Created by Thiago Gasbarro Jesus on 21/01/21.
//

import Foundation
import Alamofire
import CoreData

public class CoinAPIResquest: NSObject {


    struct APIData {
            static let urlMain: String = "https://rest.coinapi.io/v12"
            static let apiKey: String = "?apikey=FFC56E47-B89E-4FF6-98BB-06C4E5D4F279"
            static let urlAssetBTC = "\(APIData.urlMain)/exchanges\(APIData.apiKey)"
        }
    
    let parse: ParseCoin = ParseCoin()
    
   public func getCoin(_ completion: @escaping(_ response: ServerResponse) -> Void) {
        
        Alamofire.request(APIData.urlAssetBTC, method: .get).responseJSON { ( dataResponse ) in
            let statusCode = dataResponse.response?.statusCode
            switch dataResponse.result {
            case .success(let value):
                
                let resultValue = value as? [String: Any]
                if statusCode == 400 {
                    if let description = resultValue?["There is something wrong with your request"] as? String {
                        let error = ServerError(msgError: description, statusCode: statusCode!)
                        completion(.serverError(description: error))
                    } else if statusCode == 200 {
                        let model = self.parse.parseAllCoins(response: resultValue)
                        completion(.success(model: model))
                    }
                }
               
                    case .failure(let error):
                let errorCode = error._code
                 if errorCode == 401 {
                    let error = ServerError(msgError: error.localizedDescription, statusCode: errorCode)
                    print(error, "Unauthorized -- Your API key is wrong")
                } else if errorCode == 403 {
                    let error = ServerError(msgError: error.localizedDescription, statusCode: errorCode)
                    print(error, "Forbidden -- Your API key doesnt't have enough privileges to access this resource")
                } else if errorCode == 429 {
                    let error = ServerError(msgError: error.localizedDescription, statusCode: errorCode)
                    print(error, "Too many requests -- You have exceeded your API key rate limits")
                } else if errorCode == 550 {
                    let error = ServerError(msgError: error.localizedDescription, statusCode: errorCode)
                    print(error, "No data -- You requested specific single item that we don't have at this moment.") }
        
            }
        }
       
    }

}
