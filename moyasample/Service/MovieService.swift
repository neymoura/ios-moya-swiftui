//
//  Service.swift
//  moyasample
//
//  Created by Ney Moura on 25/02/20.
//  Copyright © 2020 Ney Moura. All rights reserved.
//
import Moya

// Mocked movies api
// List: GET - http://www.mocky.io/v2/5e557dcd31000033b7eb38f6

enum MovieService {
    case list
}

// MARK: - TargetType Protocol Implementation
extension MovieService: TargetType {
    
    var baseURL: URL {
        return URL(string: "http://www.mocky.io")!
    }
    
    var path: String {
        switch self {
        case .list:
            return "/v2/5e557dcd31000033b7eb38f6"
        }
    }
    
    var method: Moya.Method {
        switch self {
        case .list:
            return .get
        }
    }
    
    var sampleData: Data {
        switch self {
        case .list:
            return "{'id':999,'title':'Homem de ferro'}".utf8Encoded
        }
    }
    
    var task: Task {
        switch self {
        case .list:
            return .requestPlain
        }
    }
    
    var headers: [String : String]? {
        switch self {
        case .list:
            return nil
        }
    }
    
    var validationType: ValidationType {
        return .successCodes
    }
}

// MARK: - Helpers
private extension String {
    var urlEscaped: String {
        return addingPercentEncoding(withAllowedCharacters: .urlHostAllowed)!
    }

    var utf8Encoded: Data {
        return data(using: .utf8)!
    }
}
