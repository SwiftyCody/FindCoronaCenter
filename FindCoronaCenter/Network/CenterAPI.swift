//
//  CenterAPI.swift
//  FindCoronaCenter
//
//  Created by solgoon on 2023/01/14.
//

import Foundation

struct CenterAPI {
    static let scheme = "https"
    static let host = "api.odcloud.kr"
    static let path = "/api/15077586/v1/centers"
    static let method = "GET"
    
    func getCenterListComponents() -> URLComponents {
        var components = URLComponents()
        components.scheme = CenterAPI.scheme
        components.host = CenterAPI.host
        components.path = CenterAPI.path
        
        components.queryItems = [
            URLQueryItem(name: "perPage", value: "300")
        ]
        
        return components
    }
}
