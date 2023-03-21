//
//  BoxOfficeTests.swift
//  BoxOfficeTests
//
//  Created by Seoyeon Hong on 2023/03/20.
//

import XCTest
@testable import BoxOffice

final class BoxOfficeTests: XCTestCase {
    
    private var decoder: JSONDecoder?
    
    override func setUpWithError() throws {
        try super.setUpWithError()
        decoder = JSONDecoder()
    }
    
    override func tearDownWithError() throws {
        try super.tearDownWithError()
        decoder = nil
    }
    
    func testDecode_IfBoxOfficeDataProvide_NoThrowError() {
        // given when then
        guard let asset = NSDataAsset(name: "box_office_sample", bundle: .main) else {
            XCTFail("Decode Failure")
            return
        }
        XCTAssertNoThrow(try decoder?.decode(BoxOfficItem.self, from: asset.data))
    }
    
    func testDecode_IfBoxOfficeDataProvide_ReturnBoxOfficeType() {
        // given when then
        guard let asset = NSDataAsset(name: "box_office_sample", bundle: .main),
              let boxOffice = try? decoder?.decode(BoxOfficItem.self, from: asset.data)
        else {
            XCTFail("Decode Failure")
            return
        }
        XCTAssertEqual(boxOffice.boxOfficeResult.boxofficeType, "일별 박스오피스")
    }
    
    func testDecode_IfBoxOfficeDataProvide_ReturnBoxOfficeType2() {
        // given when then
        guard let asset = NSDataAsset(name: "movie_info_sample", bundle: .main),
              let movieInfo = try? decoder?.decode(MovieInfo.self, from: asset.data)
        else {
            XCTFail("Decode Failure")
            return
        }
        XCTAssertEqual(movieInfo.movieInfoResult.movieInfo.movieNm, "노웨어 스페셜")
    }
    
}
