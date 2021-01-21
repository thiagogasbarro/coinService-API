//
//  Handler.swift
//  ServiceModule
//
//  Created by Thiago Gasbarro Jesus on 21/01/21.
//

import Foundation


// MARK: - Error Handler
enum CoinAPIError: Error {
    case invalidRequest
    case invalidJSON
    case unknow
}
