//
//  WeatherManager.swift
//  Clima
//
//  Created by Sarah Rebecca Estrellado on 6/2/20.
//  Copyright © 2020 App Brewery. All rights reserved.
//

import Foundation

struct WeatherManager {
    let weatherURL = "http://api.openweathermap.org/data/2.5/weather?appid=1cd20d1bee5336096f07aab4e6a7d6e3&units=metric"
    
    func fetchWeather(cityName: String) {
        let URLString = "\(weatherURL)&q=\(cityName)"
    }
}
