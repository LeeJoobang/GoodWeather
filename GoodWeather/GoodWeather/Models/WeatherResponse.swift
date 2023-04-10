//
//  WeatherResponse.swift
//  GoodWeather
//
//  Created by Joobang on 2023/04/07.
//

import Foundation

struct WeatherResponse: Decodable{
    let main: Weather
}

struct Weather: Decodable {
    let temp: Double
    let humidity: Double
}
