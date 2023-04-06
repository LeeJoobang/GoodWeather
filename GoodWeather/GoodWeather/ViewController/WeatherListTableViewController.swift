//
//  WeatherListTableViewController.swift
//  GoodWeather
//
//  Created by Joobang on 2023/04/06.
//

import Foundation
import UIKit

class WeatherListTableViewController: UITableViewController{
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.navigationController?.navigationBar.prefersLargeTitles = true
        // if navigation controller의 color를 공통적으로 바꾸고 싶다면?
        // appdelegate 
    }
}
