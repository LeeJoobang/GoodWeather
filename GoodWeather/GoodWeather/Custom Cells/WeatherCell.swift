//
//  WeatherCell.swift
//  GoodWeather
//
//  Created by Joobang on 2023/04/06.
//

import Foundation
import UIKit

class WeatherCell: UITableViewCell{
    
    @IBOutlet weak var cityNameLabel: UILabel!
    @IBOutlet weak var temperatureLabel: UILabel!
    
    func configure(_ vm: WeatherViewModel){
        self.cityNameLabel.text = vm.city
        self.temperatureLabel.text = "\(vm.temperature.formatAsDegree())"
    }
}
