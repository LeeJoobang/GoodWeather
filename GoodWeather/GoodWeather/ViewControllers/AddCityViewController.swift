//
//  AddCityViewController.swift
//  GoodWeather
//
//  Created by Joobang on 2023/04/06.
//

import Foundation
import UIKit

class AddCityViewController: UIViewController{
    
    // 인스턴스를 생성해 변수를 가져다 쓰는 경우는 각 인스턴스마다 고유값을 부여해야 할 경우 사용한다.
    // 현재 api의 경우 공통의 api를 써야 하기 때문에 인스턴스 생성후 값을 부여하지 않아도 된다.
    // 그래서 static을 사용해 처리한 것이다. 16번째 줄은 필요없으나 기억을 위해 남겨둠.
    let api = APIKey()
    @IBOutlet weak var cityNameTextField: UITextField!
    @IBAction func saveButtonClicked(){
        if let city = cityNameTextField.text {
            let weatherURL = URL(string: "https://api.openweathermap.org/data/2.5/weather?q=\(city)&appid=\(APIKey.key)&units=metric")!// 서울은 섭씨 고정값으로 둔다. &units=metric
            let weatherResource = Resource<Any>(url: weatherURL) { data in
                return data
            }
            WebService().load(resource: weatherResource) { result in
            }
        } 
    }
    
    @IBAction func closeButtonClicked(){
        self.dismiss(animated: true)
    }
}
