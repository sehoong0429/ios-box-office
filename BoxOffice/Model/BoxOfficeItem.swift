//
//  BoxOfficeItem.swift
//  BoxOffice
//
//  Created by Seoyeon Hong on 2023/03/20.
//

import Foundation

struct BoxOfficeItem: Decodable {
    let boxOfficeResult: BoxOfficeResult
}

struct BoxOfficeResult: Decodable {
    let boxofficeType: String
    let dailyBoxOfficeList: [DailyBoxOffice]
}

struct DailyBoxOffice: Decodable, CustomStringConvertible {
    
    let rnum: String
    let rank: String
    let rankInten: String
    let rankOldAndNew: RankOldAndNew
    let movieCode: String
    let movieName: String
    let audienceCount: String
    let audienceAcc: String

    enum CodingKeys: String, CodingKey {
        case rnum, rank, rankInten, rankOldAndNew
        case movieCode = "movieCd"
        case movieName = "movieNm"
        case audienceCount = "audiCnt"
        case audienceAcc = "audiAcc"

    }
    
    var description: String {
        return "순위: \(rank), 영화 제목: \(movieName)"
    }
    
}

enum RankOldAndNew: String, Decodable {
    case new = "NEW"
    case old = "OLD"
}
