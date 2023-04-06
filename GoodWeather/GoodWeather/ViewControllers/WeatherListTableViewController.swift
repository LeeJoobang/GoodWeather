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
    
    override func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 1
    }
    
    override func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 100
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "WeatherCell", for: indexPath) as! WeatherCell
        cell.cityNameLabel.text = "Houston"
        cell.temperatureLabel.text = "70°"
        return cell
    }
}
