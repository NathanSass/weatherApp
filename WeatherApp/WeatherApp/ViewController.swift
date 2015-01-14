//
//  ViewController.swift
//  WeatherApp
//
//  Created by Nathan Sass on 1/13/15.
//  Copyright (c) 2015 Nathan Sass. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    //Replace the string below with your API Key.
    private let apiKey = "294fd84ca1cfe08b27b8de470fef717b"
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        let baseURL = NSURL(string: "https://api.forecast.io/forecast/\(apiKey)/")
        let forecastURL = NSURL(string: "37.8267,-122.423", relativeToURL: baseURL)
        
       let weatherData = NSData(contentsOfURL: forecastURL!, options: nil, error: nil)
        println(weatherData)
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
}