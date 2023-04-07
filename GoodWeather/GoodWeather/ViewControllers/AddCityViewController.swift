//
//  AddCityViewController.swift
//  GoodWeather
//
//  Created by Joobang on 2023/04/06.
//

import Foundation
import UIKit

class AddCityViewController: UIViewController{
    
    @IBOutlet weak var cityNameTextField: UITextField!
    
    @IBAction func saveButtonClicked(){
        
    }
    
    @IBAction func closeButtonClicked(){
        self.dismiss(animated: true)
    }
}
