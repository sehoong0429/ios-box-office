//
//  DetailMovieInfoController.swift
//  BoxOffice
//
//  Created by Seoyeon Hong on 2023/03/28.
//

import UIKit

final class DetailMovieInfoController: UIViewController {
 
    private let movieCode: String
    private let movieName: String
    
    init(movieCode: String, movieName: String) {
        self.movieCode = movieCode
        self.movieName = movieName
        super.init(nibName: nil, bundle: nil)
        view.backgroundColor = .white

        print("영화 이름: \(movieName)")
        print("영화 코드: \(movieCode)")
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
}
