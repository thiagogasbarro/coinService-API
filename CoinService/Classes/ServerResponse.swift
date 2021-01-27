//
//  ServerResponse.swift
//  CoinService
//
//  Created by Thiago Gasbarro Jesus on 27/01/21.
//

public enum ServerResponse {
    case success(model: CoinModel)
    case serverError(description: ServerError)
    case timeOut(description: ServerError)
    case noConnection(description: ServerError)
}

   public struct ServerError
    {
        let msgError:String
        let statusCode:Int
    }


