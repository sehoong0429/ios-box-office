//
//  NetworkError.swift
//  BoxOffice
//
//  Created by Seoyeon Hong on 2023/03/21.
//

import Foundation

enum NetworkError: LocalizedError, CustomStringConvertible {
    case clientError
    case serverError
    
    var description: String {
        switch self {
        case .clientError:
            return "CLINET_ERROR"
        case .serverError:
            return "SERVER_ERRROR"
        }
    }
}
