//
//  ServerResponse.swift
//  CoinService
//
//  Created by Thiago Gasbarro Jesus on 22/01/21.
//

import Foundation

enum ServerResponse {
    case success(model: CoinModel)
    case serverError(description: ServerError)
    case timeOut(description: ServerError)
    case noConnection(description: ServerError)
}

    struct ServerError
    {
        let msgError:String
        let statusCode:Int
    }

