# 박스오피스 📦
> 영화진흥위원회의 일별 박스오피스 및 영화 상세정보 API 문서에 있는 데이터를 가져와<br>
> `원하는 날짜`의 `박스오피스 조회` 및 `영화 개별 상세 조회`를 할 수 있고<br>
> `리스트` 및 `아이콘` 화면으로 레이아웃을 변경할 수 있는 앱  


> 프로젝트 기간: 2023.03.20 ~ 2023.04.14 

## 목차

1. [팀원👩🏻‍💻](#팀원)
2. [타임라인 ⏰](#타임라인)
3. [파일트리 🌲](#파일트리)
4. [실행화면 ](#실행화면)
5. [트러블슈팅](#트러블슈팅)
6. [참고링크  🔗](#참고링크)

## 팀원👩🏻‍💻

| Sehong   |
| :-----------: |
| <img height="210px" src="https://i.imgur.com/64dvDJl.jpg"> 
|[Github Profile](https://github.com/sehoong0429)

## 타임라인⏰
> 프로젝트 하나를 1차, 2차로 기간을 나눠서 진행했습니다. 

<details>
<summary>BoxOffice 1</summary>
    
### Step1 : 모델 타입 구현

 

 주요 진행 사항                                             |
 ----------------------------------------------------- |
Json 데이터와 매칭할 일별 박스오피스API 데이터 모델 타입 구현 |
Json 테스트케이스 구현 | 



### Step 2, 2-1 : 네트워킹 타입 구현 및 Mock 테스트 케이스 구현 


 주요 진행 사항                                             |
 ----------------------------------------------------- |
 NetworkError 타입 구현                          |
 네트워크 요청 수행하는 APIProvider 클래스 구현                 |
 Json데이터 디코딩 수행 작업할 JSONConverter 클래스 구현 |
 영화 개별 상세조회를 위한 데이터 모델 구현         |
 영화 정보 API에서 사용하는 각종 정보를 관리할 수 있는 MovieAPI 구현 |
 API 요청을 받아 해당 요청받고 해당 네트워크 요청을 처리하는 performRequest 메서드 구현 |
 일일오피스 및 영화 상세 데이터 출력을 위한 메서드 구현 |                       |
 테스트환경에서 사용할 URLSessionDataTask 대체 프로토콜 구현 |
파라미터 정렬을 위한 URL Extension 추가                 |
URLSessionDataTask를 모방하여 동작하는 클래스 구현   |
 APIProvider 메서드를 테스트하기 위한 MockURLSession 클래스 구현 | 


### Step 3 : 박스오피스 목록 화면 구현

 주요 진행 사항                                             |
 ----------------------------------------------------- |
 Json 데이터와 매칭할 상세 박스오피스API 데이터 모델 타입 구현 |
 목록화면을 위한 CollectionView 및 MovieListViewCell 구현 |
 새로고침을 위한 refreshControl 구현 |
 step3에 대한 코드 개선 및 step4 시작 |


    
### Step 4 : 영화 상세화면 구현
 주요 진행 사항                                             |
 ----------------------------------------------------- |
상세화면을 위한 DetailViewController 생성 및 코드 작성 |
상세화면 목록을 가져오기 위한 fetchMovieDetailData 구현  |
목록 데이터를 그려줄 메서드 구현 |
이미지를 가져오기 위한 데이터 모델 구현 | 
이미지 검색을 위한 메서드 구현 및 레이아웃 구현 
이미지 로딩 전 indicator 구현 |

</details>

<details>
<summary> BoxOffice 2 </summary>
    
### Step 1 : UICalendarView를 활용해 날짜선택 화면 구현


주요 진행 사항                                             |
 ----------------------------------------------------- |
UICalendarView를 그려주기 위한 Controller 생성 및 연결 메서드 구현|



### Step 2 : 화면 모드 변경



 주요 진행 사항                                             |
 ----------------------------------------------------- |
navigationToolbar 메서드 구현             |
 각 화면 모드에 맞는 list, icon 레이아웃 그려주는 메서드 구현                 |
 icon화면에 셀을 그려주는 movieIconCell 생성 |
 list화면 및 detail화면에 dynamic type 적용     |


### Step 3 : 로컬 캐시 구현
 주요 진행 사항                                             |
----------------------------------------------------- |
URLCache를 활용한 캐시 구현 |
|이미지 다운로드 및 저장 메서드 구현|
|이미지를 불러올 메서드 구현 | 

</details> 
    
## 파일트리🌲

```
├── BoxOffice
│   ├── App
│   │   ├── AppDelegate.swift
│   │   ├── CustomLog.swift
│   │   └── SceneDelegate.swift
│   ├── Extensions
│   │   ├── Int+decimal.swift
│   │   ├── JoinedString.swift
│   │   ├── String+NSMutableAttributed.swift
│   │   └── URL+normalized.swift
│   ├── Models
│   │   ├── BoxOfficeError.swift
│   │   ├── BoxOfficeItem.swift
│   │   ├── DateFormatOption.swift
│   │   ├── ImageAPI.swift
│   │   ├── ImageSearchResult.swift
│   │   ├── MovieAPI.swift
│   │   ├── MovieInfoItem.swift
│   │   ├── MovieInfoTitle.swift
│   │   ├── MovieRankingItem.swift
│   │   ├── NameSpace.swift
│   │   ├── SecretKey.swift
│   │   └── ViewOption.swift
│   ├── Network
│   │   ├── APIProvider.swift
│   │   ├── ImageManager.swift
│   │   └── JSONConverter .swift
│   ├── Protocols
│   │   ├── URLSessionDataTaskable.swift
│   │   └── URLSessionable.swift
│   ├── View
│   │   ├── MovieIconCell.swift
│   │   ├── MovieInfoView.swift
│   │   └── MovieListCell.swift
│   ├── MainViewController.swift
│   ├── CalendarViewController.swift
│   ├── DateManager.swift
│   ├── DetailMovieInfoViewController.swift
└── BoxOfficeTests
    ├── TestHelpers
    │   ├── MockURLSession.swift
    │   ├── MockURLSessionDataTask.swift
    │   └── URLSessionTests.swift
    └── Tests
        └── BoxOfficeTests.swift
```

## 실행화면
> 프로젝트 과정 중 주요 기능에 대한 실행화면 입니다. 

| 영화 목록화면   |  영화 상세화면 |
| :-----------: | :-----------: | 
| <img height="600px" width="300px" src="https://i.imgur.com/YwREJJx.gif"> | <img  height="600px" width="300px"  src="https://i.imgur.com/A9GCkPU.gif">

| 날짜 선택 📆   |  화면 모드 변경 📺 |
| :-----------: | :-----------: | 
| <img height="600px" width="300px" src="https://i.imgur.com/Z12PB6P.gif"> | <img  height="600px" width="300px"  src="https://i.imgur.com/Ld7UUN3.gif">



## 트러블슈팅
> 프로젝트를 진행하면서 알게되어 적용한 개념 정리 및 문제 해결에 대한 부분입니다.

### 1️⃣ API TEST 

<details>
1. 테스트 진행시 URL이 임의로 지정되어도 테스트가 통과되는 문제
2. URL 파라미터 쿼리의 위치가 변경되어 속성이 같아도 같은 URL로 인식하지 않는다는 문제


해당 테스트에서는 각각 일치하지 않는 URL을 넣고 에러를 발생시키는 테스트입니다. 
하지만 해당 테스트에서는 일치하지 않는 URL은 넘기고 서버에러를 만들어주고 있습니다.  
![](https://i.imgur.com/44HNwk7.png)


boxOfficeURLString을 임의로 지정해도 테스트가 통과한다는 것을 확인할 수 있습니다.
![](https://i.imgur.com/KElJwAW.png)

이를 위해, URL extension에 normalizedURL 속성을 추가하여 쿼리 파라미터를 정렬하여 반환하도록 구현했습니다.
```swift
extension URL {
    var normalizedURL: URL? {
        guard var components = URLComponents(url: self, resolvingAgainstBaseURL: false) else {
            return nil
        }
        
        if let queryItems = components.queryItems {
            components.queryItems = queryItems.sorted { $0.name < $1.name }
        }
        
        return components.url
    }
}


```
MockURLSession에서는 요청 URL과 응답URL을 비교하여 다르다면,
URLError.differentURL 에러를 반환하는 로직을 추가하여 위 두가지 문제를 해결해주었습니다. 

```swift
if request.url?.normalizedURL != self.response.urlResponse?.url?.normalizedURL {
                self.response.error = URLError.differentURL
}
```
</details>


### 2️⃣ HTTP 상태코드에 따른 에러처리 

<details>
APIProvider클래스 내의 dataTask 함수는 URLSession의 dataTask를 실행하여
네트워크 요청을 수행하고 결과를 completionHandler에 전달하고 있습니다. 

또한 함수 내에서 클라이언트 에러, 서버 에러 등의 네트워크 에러를 처리하고 있습니다.  
하지만 여기서 저는 Http 상태코드에 따른 에러처리를 200~299 성공 상태 코드가 아니면 
모두 `serverError` 경우로 단 한가지로만 처리해주고 있었습니다. 

```swift
 private func dataTask(request: URLRequest, completionHandler: @escaping (Result<Data, NetworkError>) -> Void) {
        
            ....

        guard let response = urlResponse as? HTTPURLResponse, (200...299).contains(response.statusCode) else {
            completionHandler(.failure(.serverError))
            return
        }      
            
        ...
                                                   
    }
```

Http 상태코드는 간단히 아래와 같이 분류됩니다.

100 - 199 : 정보성 상태 코드
200 - 299 : 성공 상태 코드
300 - 399 : 리다이렉션 상태 코드
400 - 499 : 클라이언트 에러 상태 코드
500 - 599 : 서버 에러 상태 코드


위의 상태코드를 참고하여 아래와 같이 결과에 따라 성공상태에 데이터를 받고 나머지의 경우 각각 다른 에러처리를 해주는 방향으로 로직을 수정해보았습니다. 
```swift
        
guard let response = urlResponse as? HTTPURLResponse else {
    completionHandler(.failure(.invalidURLRequest))
        return
        }
        
    switch response.statusCode {
        case 200...299:
        if let data = data {
            completionHandler(.success(data))
        } else {
            completionHandler(.failure(.missingData))
        }
        case 400...499:
            completionHandler(.failure(.clientError))
        case 500...599:
            completionHandler(.failure(.serverError))
        default:
            completionHandler(.failure(.invalidURLComponents))
        }
    }
    task.resume()
}

```
</details>
    
### 3️⃣ API 관리를 위한 MovieAPI 

<details>
Step2에서는 오늘의 일일 박스오피스 조회, 영화 개별 상세조회에 대한 네트워킹 타입을 구현해야합니다.
각 API 요청에 대한 필요한 정보를 전달 할 수 있도록 연관 값을 사용하였습니다.

 

1. boxOffice: 일일 박스오피스 정보를 가져오는 API
    - targetDt(date)가 필요합니다.
2. detail: 특정 영화의 상세 정보를 가져오는 API
    - movieCd(code)가 필요합니다.

extension으로 API 요청에 대한 경로, 메소드, 파라미터로 각 API 속성을 나눠서 관리해주는 방식으로 구현해주었습니다. 그 이유는 다음과 같습니다. 

1. 각 속성을 별도로 관리하면 필요한 부분만 가져와 사용할 수 있고, 동일한 baseURL, method를 다른 API가 추가 될 경우에도 쉽게 적용할 수 있습니다. 
2. API의 속성들을 명확하게 구분하여 관리하면 코드가 구조화시킬 수 있습니다. 
3. 각 속성을 분리하여 관리하면, API를 확장하거나 수정할 때 쉽게 대응할 수 있습니다.

```swift
extension MovieAPI {
    
    var key: String {
      return "5946533a51615e4910d26ed447f2a666"
    }
    
    var baseURL: String {
        return "http://kobis.or.kr"
    }
    
    var path: String {
        switch self {
        case .boxOffice:
            return "/kobisopenapi/webservice/rest/boxoffice/searchDailyBoxOfficeList.json"
        case .detail:
            return "/kobisopenapi/webservice/rest/movie/searchMovieInfo.json"
        }
    }
    
    ... 
    
}
```
</details>

### 4️⃣ 에러타입
<details>
네트워크 요청 처리 중 발생할 수 있는 에러들을 총 4가지로 나타내주었습니다.
또한 에러 메시지를 사용자 친화적으로 제공할 수 있는 LocalizedError 를 채택해보았습니다.

`clientError` - 클라이언트가 잘못된 데이터를 전송하거나 요청이 올바르지 않은 경우
`serverError` - 서버가 내부 오류로 인해 요청을 처리할 수 없거나 서버가 올바른 응답을 제공하지 못한 경우
`invalidURLComponents` - API 요청을 구성하는 데 필요한 URL 구성 요소가 올바르지 않은 형식인 경우
`invalidURLRequest` - 요청 URL이 올바르게 생성되지 않은 경우
`missingData` - 데이터가 없는 경우

```swift
enum NetworkError: LocalizedError, CustomStringConvertible {
    case clientError
    case serverError
    case invalidURLComponents
    case invalidURLRequest
		case missingData 
    
    var description: String {
        switch self {
        case .clientError:
            return "CLINET_ERROR"
        case .serverError:
            return "SERVER_ERRROR"
        case .invalidURLComponents:
            return "INVALID_URL_COMPONENTS"
        case .invalidURLRequest:
            return "INVALID_URL_REQUEST"
				case .missingData:
            return "MISSING_DATA"
        }
    }
}
```
</details>

### 5️⃣ createStateLabel 함수
<details>
영화의 순위 변동에 따라 상태 레이블을 생성해주는 함수 

영화진흥위원회API에서 확인할 수 있는 rankOldandNew(랭킹에 신규진입여부)와 rankInten(전일대비 순위의 증감분)을 매개변수로 받아주었습니다. 

1. rankOldandNew가 “Old”인 경우에는 아래 세 조건이 들어갑니다.
 
    -  변동 없으면 "-"
    -  순위 상승 : 빨간 화살표 + 등락 편차  ▲
    -  순위 하락 : 파란 화살표 + 등락 편차  ▼

2. rankOldandNew가 “New”인 경우에는 “신작”으로 표시해줍니다.

```swift
private func createStateLabel(rankOldandNew: String, rankInten: Int) -> NSMutableAttributedString {
        let attributedString = NSMutableAttributedString()
        
        if rankOldandNew == "OLD" {
            if rankInten == 0 {
                attributedString.add(string: "-")
            } else if rankInten > 0 {
                attributedString.add(string: "▲", color: .systemRed)
                attributedString.add(string: "\(rankInten)")
            } else {
                attributedString.add(string: "▼", color: .systemBlue)
                attributedString.add(string: "\(-rankInten)")
            }
        } else {
            attributedString.add(string: "신작", color: .systemRed)
        }
        
        return attributedString
        
}
```

또한 새로운 NSAttributedString을 만들어 주어진 속성으로 초기화한 다음, 
기존의 NSMutableAttributedString에 추가하고 반환할 수 있도록 extension을 구현하여 위와 같이 편리하게 원하는 문자열을 추가할 수 있습니다. 

```swift
extension NSMutableAttributedString {
    
    @discardableResult
    func add(
        string: String,
        font: UIFont = .systemFont(ofSize: 12),
        color: UIColor = .label
    ) -> NSMutableAttributedString {
        let attributes: [NSAttributedString.Key: Any] = [
            .font: font,
            .foregroundColor: color
        ]
        
        append(NSAttributedString(string: string, attributes: attributes))
        
        return self
    }
    
}
```
</details>

### 6️⃣ ImageView extension 구현 
<details>
이미지를 가져올 때 이미지가 크면 제가 사이즈를 조절해주더라도
줄여준 만큼 여백이 생기는 문제가 있었습니다. 
`scale`을 이용해서 이미지의 크기를 조절할 수 있도록 했습니다.
원본 이미지의 가로 크기와 UIImageView의 가로 크기를 비교하여 이미지의 스케일을 계산하고, 이용해 UIImage를 생성하는 방식입니다.

데이터에서 이미지를 만드는 과정이 메모리를 많이 사용하는데, 
이런 방식으로 구현하면 imageView에 맞게 크기를 지정해서 불필요한 메모리 사용을 줄일 수 있습니다.   

```swift
extension UIImageView {
    
    func load(url: URL, originalWidth: Int = 0) {
        let viewWidth = frame.width
        
        DispatchQueue.global().async { [weak self] in
            guard let self = self, let data = try? Data(contentsOf: url) else { return }
            
            let scale = CGFloat(originalWidth) / CGFloat(viewWidth)
            
            let image = UIImage(data: data, scale: scale)
            
            DispatchQueue.main.async {
                self.image = image
            }
        }
    }
    
}
```
</details>

### 7️⃣  Custom log 사용 
<details>
커스텀 로그를 사용하면 코드의 실행 흐름을 쉽게 파악할 수 있습니다. 로그를 통해 아래와 같이 함수 호출, 에러 발생 위치 등의 정보를 정확하게 확인 할 수 있어서 사용하게 되었습니다.

![](https://i.imgur.com/p9B5LMu.png)

```swift
func DEBUG_LOG(_ msg: Any, file: String = #file, function: String = #function, line: Int = #line) {
    #if DEBUG
    let filename = file.split(separator: "/").last ?? ""
    let funcName = function.split(separator: "(").first ?? ""
    print("😡[\(filename)] \(funcName) (\(line)): \(msg)")
    #endif
}
```
</details>

### 8️⃣ UICalendarView와 UIDatePicker의 차이 

<details>    
둘다 사용 경험이없어 먼저 차이점과 구현 방식에 대해 찾아보고 진행하였습니다. 

**UIDatePicker** 
A control for inputting date and time values
:날짜와 시간을 입력 하기 위한`control`

- UIDatePicker은 유저가 한번에 하나의 point만 선택할 수 있습니다.
- UIDatePicker은 날짜 및 시간 선택에 중점을 둔 단일 컴포넌트기때문에 
특정 시점에 대해 사용자로부터 입력을 받거나 해당 날짜를 처리하고 싶거나 시간을 선택하는 방식으로 구현하고 싶다면 UIDatePicker를 사용하면 됩니다.

**Calendar view** 
A view that displays a calendar with date-specific decorations, and provides for user selection of a single date or multiple dates. 
: 특정한 날짜가 있는 달력을 표시하고, 사용자가 단일 날짜 또는 여러 날짜를 선택할 수 있는 `view` 


- UICalendarView를 사용하면 추가 정보(예: 예정된 이벤트)가 있는 사용자의 특정 날짜를 표시할 수 있습니다.
- 달력을 보여주고 선택하는 것만 구현하려면 UICalendarView를 사용하면 됩니다.

UICalendarView와 UIDatePicker의 중요한 차이점은 
NSDate를 사용하는 특정 시점을 나타내는 UIDatePicker와 달리 UICalendarView는 NSDateComponents로 날짜를 나타낸다는 것입니다.

1. **NSDate**: NSDate는 특정 시점을 나타내는 클래스입니다. 
유닉스 시간인 1970년 1월 1일 00:00:00 UTC부터 현재 시점까지의 시간 간격을 초 단위로 저장합니다. NSDate는 시간대를 고려하지 않으며, 절대 시간을 나타냅니다.

2. **NSDateComponents**: NSDateComponents는 날짜 및 시간의 구성 요소를 나타내는 클래스입니다. 이 클래스는 연도, 월, 일, 시간, 분, 초 등의 구성 요소를 개별적으로 저장하며, 시간대와 관련된 정보도 포함할 수 있습니다.
```swift
let calendarView = UICalendarView()
let selectedDateComponents = calendarView.selectedDateComponents
```

이 차이점은 날짜 및 시간 처리 방식에 영향을 미칩니다. 
UIDatePicker를 사용하면 NSDate를 사용하여 절대 시간을 처리하게 되며, UICalendarView를 사용하면 NSDateComponents를 사용하여 날짜 및 시간의 개별 구성 요소를 처리하게 됩니다. 이렇게 함으로써 UICalendarView는 선택한 날짜 및 시간에 대한 더 세밀한 제어를 가능하게 합니다.

*물론 UIDatePicker도 NSDateComponents를 사용하여 날짜 및 시간 구성 요소를 처리할 수 있었습니다.:
```swift
let datePicker = UIDatePicker()
let selectedDate = datePicker.date

let calendar = Calendar.current
let components = calendar.dateComponents([.year, .month, .day, .hour, .minute, .second], from: selectedDate)
```

</details>

### 9️⃣ Map 사용하여 Optional 처리
<details>
map은 두 가지 주요 역할을 수행을 할 수 있습니다. 

`변환` : map은 배열, 옵셔널에 저장된 값을 가져와 주어진 클로저 내의 로직에 따라 새로운 값을 생성합니다.

`옵셔널 다루기`: 옵셔널 값에 map을 사용할 때, 옵셔널 값이 nil인 경우 클로저 내의 코드를 실행하지 않습니다. 이를 통해 nil 값에 대한 처리를 간결하게 할 수 있으며, 옵셔널 값이 있는 경우에만 로직을 실행할 수 있습니다.

```swift 
private func setTitle(date: Date) {
        DateManager.formattedDateString(of: date, option: .calendar)
            .map { title = $0 }
    }
```

위의 setTitle 함수는 주어진 날짜의 제목을 설정합니다. DateManager.formattedDateString 함수의 반환값이 Optional이기때문에 map을 사용하여 nil이 아닌 경우에만 title 변수에 값을 할당합니다. 또한 위의 경우는 DateFormatOption을 하드코딩하지 않고 타입을 써서 nil이 아닌 경우를 보장할 수 있습니다. 이렇게 하면 안전하게 Optional 값을 처리할 수 있습니다. 
 </details>

### 🔟 DateManager 구현
<details>
조언을 받았던대로 한 객체가 하나의 역할만 수행할 수 있도록 분리하여 date 관련된 함수들을 `DateManager`로 만들어서 분리해보았습니다.

1. `createYesterdayDate()`: 어제 날짜를 만들어주는 함수 
2. `formattedDateString()`: 날짜를 지정된 포맷 옵션에 따라 문자열로 변환하여 반환하는 함수
3. `formattedDateString()`: 날짜 문자열을 'yyyy-MM-dd' 형식에서 'MMMM dd, yyyy' 형식으로 변환하여 반환하는 함수
```swift
struct DateManager {
    
    static func createYesterdayDate() -> Date {
        let today = Date()
        let yesterday = Calendar.current.date(byAdding: .day, value: -1, to: today) ?? today
        return yesterday
    }
    
    static func formattedDateString(of date: Date, option: DateFormatOption) -> String? {
        let dateFormatter = DateFormatter()
        dateFormatter.dateFormat = option.rawValue
        return dateFormatter.string(from: date)
    }
    
    static func formattedDateString(of dateString: String) -> String? {
        let dateFormatter = DateFormatter()
        dateFormatter.dateFormat = DateFormatOption.numerical.rawValue
        if let date = dateFormatter.date(from: dateString) {
            dateFormatter.dateFormat = DateFormatOption.calendar.rawValue
            return dateFormatter.string(from: date)
        }
        return dateString
    }
    
}
```

또한 DateFormat 문자열을 하드코딩하고 있었는데 해당부분도 
열거형으로 분리하여 코드를 전체적으로 정리해보았습니다. 
```swift
enum DateFormatOption: String {
    case calendar = "yyyy-MM-dd"
    case numerical = "yyyyMMdd"
}

```
</details>

### 1️⃣1️⃣ 메인 화면의 뷰 모드 변경 기능 구현
<details>
사용자는 뷰 모드를 다음과 같이 변경할 수 있습니다.
1. 리스트 모드
2. 아이콘 모드

`UIAlertController`를 이용하여 뷰 모드 변경 버튼을 생성해주었고
이 버튼을 누르면 현재 모드를 변경 할 수 있습니다. 
```swift 
@objc private func changeViewMode() {
    let alert = UIAlertController(title: "화면모드변경",
                                  message: nil,
                                  preferredStyle: .actionSheet)
    
    let actionTitle: String = currentViewOption == .list ? ViewOption.icon.rawValue : ViewOption.list.rawValue
    let viewModeAction = UIAlertAction(title: actionTitle, style: .default) { [weak self] _ in
        guard let self else { return }
        self.changeView()
    }
    let cancelAction = UIAlertAction(title: "취소", style: .cancel)
    
    alert.addAction(viewModeAction)
    alert.addAction(cancelAction)
    self.present(alert, animated: true, completion: nil)
}

```

changeView() 함수를 통해 뷰 모드를 변경하고, 뷰를 새로고침하는 방식입니다. 
```swift 
private func changeView() {
    if case .list = currentViewOption {
        collectionView.setCollectionViewLayout(createIconLayout(),
                                               animated: true)
        collectionView.scrollToItem(at: IndexPath(item: 0, section: 0),
                                    at: .top, animated: false)
        currentViewOption = .icon
    } else if case .icon = currentViewOption {
        collectionView.setCollectionViewLayout(createListLayout(),
                                               animated: true)
        currentViewOption = .list
    }
    collectionView.reloadData()
}

```
</details>

### 1️⃣2️⃣ CompositionalLayout을 이용한 화면 icon 모드 구현
<details>
NSCollectionLayoutSize, NSCollectionLayoutItem, NSCollectionLayoutGroup, 및 NSCollectionLayoutSection을 사용하여 아이콘 모드의 레이아웃을 구성하고 있습니다. 
이를 통해 아이콘 모드에서 영화 포스터가 가로로 2개씩 표시되도록 설정해주었습니다. 

```swift
private func createIconLayout() -> UICollectionViewLayout {
    let itemSize = NSCollectionLayoutSize(widthDimension: .fractionalWidth(0.5),
                                          heightDimension: .absolute(180))
    let item = NSCollectionLayoutItem(layoutSize: itemSize)
    item.contentInsets = NSDirectionalEdgeInsets(top: 0, leading: 10, bottom: 0, trailing: 5)
    
    let groupSize = NSCollectionLayoutSize(widthDimension: .fractionalWidth(1.0),
                                           heightDimension: .estimated(180))
    let group = NSCollectionLayoutGroup.horizontal(layoutSize: groupSize, subitems: [item])
    
    let section = NSCollectionLayoutSection(group: group)
    section.contentInsets = NSDirectionalEdgeInsets(top: 0, leading: 10, bottom: 0, trailing: 10)
    section.interGroupSpacing = 10
    
    let layout = UICollectionViewCompositionalLayout(section: section)
    return layout
}

```
</details>
    

### 1️⃣3️⃣ 캐시 정책
<details>
1. 캐싱할 데이터의 범위: `이미지`
크기가 큰 이미지를 캐싱 대상으로 설정해주었습니다. 
이미지를 로드하는 시간을 줄여서 사용자 경험을 개선할 수 있습니다.
아래와 같이 `ImageManager`를 만들어서 사용해보았습니다. 

```swift
final class ImageManager {
    
    static let shared = ImageManager()
    ...
}
```

2. 캐시 용량 제한: `메모리, 디스크 각 500MB` 
```swift
static let cache = URLCache(
        memoryCapacity: 500 * 1024 * 1024,
        diskCapacity: 500 * 1024 * 1024,
        directory: cacheDirectory
    )
```
3. 잔존 기한: `.returnCacheDataElseLoad` 
    URLRequest.CachePolicy는 로컬 캐시 데이터가 있으면 사용하고, 없으면 로드할 수 있는 방식을 선택하여 적용해주었습니다. 
```swift
func fetchImage(imageURL: URL, cachePolicy: URLRequest.CachePolicy = .returnCacheDataElseLoad, completionHandler: @escaping (Data) -> Void) {
        let urlRequest = URLRequest(url: imageURL)
        
        loadImageFromCache(request: urlRequest) { [weak self] result in
            guard let self else { return }
            switch result {
            case .success(let imageData):
                completionHandler(imageData)
            case .failure:
                self.downloadImage(request: urlRequest) { imageData in
                    completionHandler(imageData)
                }
            }
        }
    }
```
</details>

### 1️⃣4️⃣ NScache vs URLCache 비교 
    
<details>


네트워크 통신을 통해 받아온 데이터를 로컬에 캐시하려면 CoreData, URLCache, NSCache 등의 방법을 사용할 수 있습니다.

먼저 `CoreData`는 앱에서 모델 계층 개체를 관리하는 데 사용하는 프레임워크입니다. 영구 저장소를 사용하여 앱의 데이터를 관리하고, 객체 관계 및 데이터 모델링 기능을 제공하는데 좀 더 복잡한 데이터를 저장하기에 적합하다고 느껴져서 선택하지 않았습니다. 

저는 `URLCache`를 사용하는 방식을 선택했는데, `NSCache`와 비슷한 부분이 있어서 찾아보고 진행하였습니다.

### 🌀NSCache

NSCache는 in-memory 캐시이기 때문에, 시스템의 메모리를 사용하고 이미지의 크기 또는 데이터의 크기에 비례하는 크기를 할당할 것입니다. 

다른 애플리케이션에 메모리가 필요하고 시스템이 이 애플리케이션에 캐시된 개체를 일부 제거하여 메모리 설치 공간을 최소화할 수 있도록 합니다.

하지만 NSCache는 제거 되는 절차가 순서대로 진행 되는 것을 보장하지 않습니다. NSCache의 장점은 생성 비용이 많이 드는 데이터가 있는 개체에 대한 성능 및 자동 삭제 기능입니다.

### 🌀URLCache

네트워크 데이터 관리를 위해서는 데이터를 캐싱하기 위해 NSCache 대신 URLCache를 사용하는게 좋습니다. URLCache는 메모리 내 및 디스크 상의 캐시이며 데이터에 대해 메모리chunk를 할당하지 않기 때문입니다.

더 유연한 in-memory 및 disk 크기를 정의할 수 있습니다. 또한 URLCache는 시스템이 디스크 공간이 부족할 때까지 캐시된 데이터를 유지합니다.


</details>





## 참고링크🔗

<details>
<summary>BoxOffice 1</summary>
    
### step1, step2, step2-1

- [URLSession](https://developer.apple.com/documentation/foundation/urlsession)
[Fetching Website Data into Memory](https://developer.apple.com/documentation/foundation/url_loading_system/fetching_website_data_into_memory)
- [swift에서 Json Parsing하기](https://learn-hyeoni.tistory.com/m/45)
- [swift에서 codable사용하기](https://medium.com/humanscape-tech/swift에서-codable-사용하기-367587c5a591)
- [restful-api는 무엇일까요?](https://aws.amazon.com/ko/what-is/restful-api/)
- [restAPI제대로알고사용하기](https://meetup.nhncloud.com/posts/92)
- [네트워크와 무관한URLSessionTest](https://wody.tistory.com/10)
- [네트워크 통신(RESTful API, JSON, URLSession)](https://weekoding.tistory.com/m/7)
- [JSON API와 네트워크 통신하기 - URLSession, JSONConverter](https://bibi6666667.tistory.com/m/359)
- [Test Double이란](https://jiseobkim.github.io/swift/2022/02/06/Swift-Test-Double(%EB%B6%80%EC%A0%9C-Mock-&-Stub-&-SPY-%EC%9D%B4%EB%9F%B0%EA%B2%8C-%EB%AD%90%EC%A7%80-).html)
- [http 통신 get , post , post body json 요청 실시](https://kkh0977.tistory.com/1334)
- [Json파일만들기](https://jurgen-94.tistory.com/30)
- [Constructing URLs in Swift](https://www.swiftbysundell.com/articles/constructing-urls-in-swift/)
- [iOS Networking and Testing](https://techblog.woowahan.com/2704/)
- [[Swift] Mock 을 이용한 Network Unit Test 하기](https://sujinnaljin.medium.com/swift-mock-을-이용한-network-unit-test-하기-a69570defb41)
- [HTTPS상태코드](https://dev-mystory.tistory.com/274)


### step3, step4 
- [UIrefreshcontrol](https://developer.apple.com/documentation/uikit/uirefreshcontrol)
- [UIcollectionviewcompositionallayout](https://developer.apple.com/documentation/uikit/uicollectionviewcompositionallayout)
- [Uicollectionlayoutlistconfiguration](https://developer.apple.com/documentation/uikit/uicollectionlayoutlistconfiguration)
- [implementing_modern_collection_views](https://developer.apple.com/documentation/uikit/views_and_controls/collection_views/implementing_modern_collection_views)
- [Swift-UICollectionView-CompositionalLayout-UIKit](https://github.com/vvbutko/Swift-UICollectionView-CompositionalLayout-UIKit)
- [how-to-create-uicollectionview-list-with-compositional-layout/](https://www.vbutko.com/articles/how-to-create-uicollectionview-list-with-compositional-layout/)
- [when-to-use-uicollectionview-instead-of-uitableview](https://stackoverflow.com/questions/23078847/when-to-use-uicollectionview-instead-of-uitableview)
- [nsmutableattributedstring](https://developer.apple.com/documentation/foundation/nsmutableattributedstring)
- [Return Early Pattern](https://medium.com/swlh/return-early-pattern-3d18a41bba8)
- [Lists in UICollectionView](https://developer.apple.com/videos/play/wwdc2020/10026)
- [creating-lists-with-collection-view/](https://useyourloaf.com/blog/creating-lists-with-collection-view/)
- [CollectionView - FlowLayout](https://co-dong.tistory.com/69)
- [iOS-TableView-xib로-구현하기](https://shark-sea.kr/entry/iOS-TableView-xib%EB%A1%9C-%EA%B5%AC%ED%98%84%ED%95%98%EA%B8%B0)
- [Swift-Custom-Cell로-UICollectionView-구현하기](https://velog.io/@jyw3927/Swift-Custom-Cell%EB%A1%9C-UICollectionView-%EA%B5%AC%ED%98%84%ED%95%98%EA%B8%B0-i4xtxih4)
- [이미지API가져오기](https://rhkdgus0779.tistory.com/70)
- [indicator-view](https://ios-development.tistory.com/682)

</details>
    
<details>
<summary>BoxOffice 2</summary>
    
### Boxoffice 2 step1, step2

- [UICalendarView](https://developer.apple.com/documentation/uikit/uicalendarview)
- [UIAlertController](https://developer.apple.com/documentation/uikit/uialertcontroller)
- [What’s new in Swift? - WWDC22](https://www.notion.so/UICalendarView-8c9f04597fed4a86bcf846a087ac17d6) 
- [How to Use UICalendarView in iOS 16](https://betterprogramming.pub/uicalendarview-tutorial-593731e52b72)
    
### BoxOffice 3 step3
- [URLCache](https://developer.apple.com/documentation/foundation/urlcache)
- [CoreData](https://developer.apple.com/documentation/coredata)
- [image-caching](https://levelup.gitconnected.com/image-caching-with-urlcache-4eca5afb543a)

- [urlSession](https://pspdfkit.com/blog/2020/downloading-large-files-with-urlsession/)
- [nsCache,urlCache](https://medium.com/@master13sust/to-nscache-or-not-to-nscache-what-is-the-urlcache-35a0c3b02598)
</details>
