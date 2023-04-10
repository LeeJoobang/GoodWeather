//
//  String+Extenstions.swift
//  GoodWeather
//
//  Created by Joobang on 2023/04/10.
//

import Foundation

extension String {
    func escaped() -> String{
        return self.addingPercentEncoding(withAllowedCharacters: .urlHostAllowed) ?? self
    }
}
