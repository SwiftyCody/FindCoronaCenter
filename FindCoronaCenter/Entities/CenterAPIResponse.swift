//
//  CenterAPIResponse.swift
//  FindCoronaCenter
//
//  Created by solgoon on 2023/01/14.
//

import Foundation

struct CenterAPIResponse: Decodable {
    let data: [Center]
    let currentCount: Int
    let matchCount, page, perPage, totalCount: Int
}
