//
//  ViewController.swift
//  BoxOffice
//
//  Created by kjs on 13/01/23.
//

import UIKit

class ViewController: UIViewController {
    
    let targetDt = "20220301"
    let movieCd = "20124079"
    
    override func viewDidLoad() {
        super.viewDidLoad()
//        print(today)
        test()
//        test2()
        
    }
//
//    func test() {
//        URLSessionProvider.shared.request(api: .boxOffice(date: targetDt)) { result in
//            switch result {
//            case .success(let data):
//                print(URLSessionProvider.shared.parseJSON(data))
//                print(data)
//            case .failure(let error):
//                print(error)
//            }
//        }
//    }
//
//    func test2() {
//        URLSessionProvider.shared.request(api: .detail(code: movieCd)) { result in
//            switch result {
//            case .success(let data):
//                print(URLSessionProvider.shared.parseJSON2(data))
//                print(data)
//            case .failure(let error):
//                print(error)
//            }
//        }
//    }
    func test() {
        URLSessionProvider.shared.request(api: .boxOffice(date: targetDt)) { result in
            switch result {
            case .success(let data):
                do {
                    let boxOfficeItem: BoxOfficItem = try JSONConverter.shared.decodeData(data, T: BoxOfficItem.self)
                    let myMovielists = boxOfficeItem.boxOfficeResult.dailyBoxOfficeList.map { DailyBoxOfficeItem(rank: $0.rank, movieName: $0.movieName) }
                    print(myMovielists)
                } catch let error as NetworkError {
                    print(error.description)
                } catch {
                    print("Unexpected error: \(error)")
                }

            case .failure(let error):
                print(error)
            }
        }
    }

    func test2() {
        URLSessionProvider.shared.request(api: .detail(code: movieCd)) { result in
            switch result {
            case .success(let data):
                do {
                    let movieInfo: MovieInfo = try JSONConverter.shared.decodeData(data, T: MovieInfo.self)
                    print(movieInfo)
                } catch let error as NetworkError {
                    print(error.description)
                } catch {
                    print("Unexpected error: \(error)")
                }
            case .failure(let error):
                print(error)
            }
        }
    }

    
    
    func todayString() -> String {
        let dateFormatter = DateFormatter()
        let today = Date()
        dateFormatter.dateFormat = "yyyyMMdd"
        return dateFormatter.string(from: today)
    }
    
}

