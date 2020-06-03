//
//  WeatherManager.swift
//  Clima
//
//  Created by Sarah Rebecca Estrellado on 6/2/20.
//  Copyright © 2020 App Brewery. All rights reserved.
//

import Foundation

struct WeatherManager {
    let weatherURL = "https://api.openweathermap.org/data/2.5/weather?appid=1cd20d1bee5336096f07aab4e6a7d6e3&units=metric"
    
    func fetchWeather(cityName: String) {
        let URLString = "\(weatherURL)&q=\(cityName)"
        performRequest(urlString: URLString)
    }
    
    func performRequest(urlString: String) {
        //1. Create URL
        if let url = URL(string: urlString) {
            
            //2/ Create URL Session
            
            let session = URLSession(configuration: .default)
            
            //3. Give the session a task
            let task = session.dataTask(with: url) { (data, response, error) in
                if error != nil {
                    print(error!)
                    return
                }
                
                if let safeData = data {
                    self.parseJSON(weatherData: safeData)
                }
            }
            
            //4. Start the task
            task.resume()
        }
        
        }
    
    func parseJSON(weatherData: Data) {
        
    }

    
}
