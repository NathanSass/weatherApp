//
//  current.swift
//  WeatherApp
//
//  Created by Sass, Nathan on 1/27/15.
//  Copyright (c) 2015 Nathan Sass. All rights reserved.
//

import Foundation

struct Current {
    var currentTime: Int
    var temperature: Int
    var humidity: Double
    var precipProbability: Double
    var summary: String
    var icon: String
    
    init(weatherDictionary: NSDictionary){
        let currentWeather = weatherDictionary["currently"] as NSDictionary
        
        currentTime = currentWeather["time"] as Int
        temperature = currentWeather["temperature"] as Int
        humidity = currentWeather["humidity"] as Double
        precipProbability = currentWeather["precipProbability"] as Double
        summary = currentWeather["summary"] as String
        icon = currentWeather["icon"] as String
    }
    
}