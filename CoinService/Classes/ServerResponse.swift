//
//  ServerResponse.swift
//  CoinService
//
//  Created by Thiago Gasbarro Jesus on 27/01/21.
//

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


