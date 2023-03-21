//
//  ViewController.swift
//  BoxOffice
//
//  Created by kjs on 13/01/23.
//

import UIKit

class ViewController: UIViewController {
    
    let targetDt = "20230301"
    let movieCd = "20212077"
    
    override func viewDidLoad() {
        super.viewDidLoad()
//        print(today)
        
        test2()
        
    }

    func test() {
        URLSessionProvider.shared.request(api: .boxOffice(date: targetDt)) { result in
            switch result {
            case .success(let data):
                print(URLSessionProvider.shared.parseJSON(data))
                print(data)
            case .failure(let error):
                print(error)
            }
        }
    }

    func test2() {
        URLSessionProvider.shared.request(api: .detail(code: movieCd)) { result in
            switch result {
            case .success(let data):
                print(URLSessionProvider.shared.parseJSON2(data))
                print(data)
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

