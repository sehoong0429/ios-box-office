//
//  DetailModel.swift
//  BoxOffice
//
//  Created by Seoyeon Hong on 2023/03/21.
//

import Foundation

struct MovieInfo: Codable {
    let movieInfoResult: MovieInfoResult
}

struct MovieInfoResult: Codable {
    let movieInfo: MovieInfoClass
    let source: String
}

struct MovieInfoClass: Codable {
    let movieCD, movieNm, movieNmEn, movieNmOg: String
    let showTm, prdtYear, openDt, prdtStatNm: String
    let typeNm: String
    let nations: [Nation]
    let genres: [Genre]
    let directors: [Director]
    let actors: [Actor]
    let showTypes: [ShowType]
    let companys: [Company]
    let audits: [Audit]

    enum CodingKeys: String, CodingKey {
        case movieCD = "movieCd"
        case movieNm, movieNmEn, movieNmOg, showTm, prdtYear, openDt, prdtStatNm, typeNm, nations, genres, directors, actors, showTypes, companys, audits
    }
}

struct Actor: Codable {
    let peopleNm, peopleNmEn, cast, castEn: String
}

struct Audit: Codable {
    let auditNo, watchGradeNm: String
}

struct Company: Codable {
    let companyCD, companyNm, companyNmEn, companyPartNm: String

    enum CodingKeys: String, CodingKey {
        case companyCD = "companyCd"
        case companyNm, companyNmEn, companyPartNm
    }
}

struct Director: Codable {
    let peopleNm, peopleNmEn: String
}

struct Genre: Codable {
    let genreNm: String
}

struct Nation: Codable {
    let nationNm: String
}

struct ShowType: Codable {
    let showTypeGroupNm, showTypeNm: String
}
