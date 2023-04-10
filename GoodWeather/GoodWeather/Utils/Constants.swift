//
//  Constants.swift
//  GoodWeather
//
//  Created by Joobang on 2023/04/10.
//

import Foundation

struct Constants{
    struct Urls{
        static func urlForWeatherByCity(city: String) -> URL{
           return URL(string: "https://api.openweathermap.org/data/2.5/weather?q=\(city.escaped())&appid=\(APIKey.key)&units=metric")!
            
        }
    }
}
