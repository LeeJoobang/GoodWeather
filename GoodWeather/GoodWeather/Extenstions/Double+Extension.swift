//
//  Double+Extension.swift
//  GoodWeather
//
//  Created by Joobang on 2023/04/10.
//

import Foundation

extension Double {
    func formatAsDegree() -> String{
        return String(format: "%.0fº", self)
    }
}
