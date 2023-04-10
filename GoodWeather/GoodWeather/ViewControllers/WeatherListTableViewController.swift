//
//  WeatherListTableViewController.swift
//  GoodWeather
//
//  Created by Joobang on 2023/04/06.
//

import Foundation
import UIKit

class WeatherListTableViewController: UITableViewController, AddWeatherDelegate{
    
    private var weatherListViewModel = WeatherListViewModel()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.navigationController?.navigationBar.prefersLargeTitles = true
        // if navigation controller의 color를 공통적으로 바꾸고 싶다면?
        // appdelegate
        // webservice load를 직접 viewcontroller에서 호출하는 것은 적절치 못함 + 대신 뷰모델에 넣음
    }
    
    func addWeatherDidSave(vm: WeatherViewModel) {
        weatherListViewModel.addWeatherViewModel(vm)
        self.tableView.reloadData()
    }
    
    override func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return weatherListViewModel.numberOfRows(section )
    }
    
    override func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 100
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "WeatherCell", for: indexPath) as! WeatherCell
        let weatherVM = weatherListViewModel.modelAt(indexPath.row)
        cell.configure(weatherVM)
        return cell
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "AddWeatherCityViewController"{
            prepareSegueForAddWeatherCityViewController(segue: segue)
        }
    }
    
    func prepareSegueForAddWeatherCityViewController(segue: UIStoryboardSegue){
        guard let nav = segue.destination as? UINavigationController else {
            fatalError("navigationController not found")
        }
        
        guard let addWeatherCityVC = nav.viewControllers.first as? AddCityViewController else {
            fatalError("AddCityViewController not found")
        }
        
        addWeatherCityVC.delegate = self
    }
}
