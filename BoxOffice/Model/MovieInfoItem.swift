//
//  MovieInfoItem.swift
//  BoxOffice
//
//  Created by Seoyeon Hong on 2023/03/21.
//

import Foundation

struct MovieInfoItem: Decodable {
    let movieInfoResult: MovieInfoResult
}

struct MovieInfoResult: Decodable {
    let movieInfo: MovieInfo
}

struct MovieInfo: Decodable, CustomStringConvertible {
    let movieCode: String
    let movieName: String
    let showTime: String
    let productionYear: String
    let openDate: String
    let nations: [Nation]
    let genres: [Genre]
    let directors: [Director]
    let actors: [Actor]
    let audits: [Audit]
    
    enum CodingKeys: String, CodingKey {
        case movieCode = "movieCd"
        case movieName = "movieNm"
        case showTime = "showTm"
        case productionYear = "prdtYear"
        case openDate = "openDt"
        case nations, genres, directors, actors, audits
    }
    
    var description: String {
        let genres = genres.map { $0.genreName }.joined(separator: ", ")
        let directors = directors.map { $0.peopleName }.joined(separator: ", ")
        let actors = actors.map { $0.actorName }.joined(separator: ", ")
        let audits = audits.map { $0.watchGradeName}.joined(separator: ", ")
        let nations = nations.map { $0.nationName}.joined(separator: ", ")
        
        return """
            영화제목: \(movieName)
            감독: \(directors)
            개봉연도: \(productionYear)
            개봉일: \(openDate)
            상영시간: \(showTime)
            관람등급: \(audits)
            제작국가: \(nations)
            장르: \(genres)
            배우: \(actors)
            """
    }
}

struct Actor: Decodable {
    let actorName: String
    
    enum CodingKeys: String, CodingKey {
        case actorName = "peopleNm"
    }
}

struct Audit: Decodable {
    let watchGradeName: String
    
    enum CodingKeys: String, CodingKey {
        case watchGradeName = "watchGradeNm"
    }
}

struct Director: Decodable {
    let peopleName: String
    
    enum CodingKeys: String, CodingKey {
        case peopleName = "peopleNm"
    }
}

struct Genre: Decodable {
    let genreName: String
    
    enum CodingKeys: String, CodingKey {
        case genreName = "genreNm"
    }
}

struct Nation: Decodable {
    let nationName: String
    
    enum CodingKeys: String, CodingKey {
        case nationName = "nationNm"
    }
}
