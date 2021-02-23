//
//  WeatherManager.swift
//  Clima
//
//  Created by Ethan Smith on 23/02/21.
//  Copyright © 2021 App Brewery. All rights reserved.
//

import Foundation

var cityName = "Auckland"
let jsonReceiver = JSONDecoder()

struct WeatherManager {
    let weatherURL = "https://api.openweathermap.org/data/2.5/weather?&units=metric&appid=254f77517e04920912bf344cb3d6482e"
    
    func fetchWeather(cityName: String) {
        let urlString = "\(weatherURL)&q=\(cityName)"
        performRequest(urlString: urlString)
    }
    
    func performRequest(urlString: String) {
        // Create URL
        if let url = URL.init(string: urlString) {
            // Create a URLSession
            
            let session = URLSession(configuration: .default)
            
            // Give session a task
            let task = session.dataTask(with: url, completionHandler: handle(data:response:error:) )
            
            // Start the session task
            task.resume()
        }
    }
    
    func handle(data: Data?, response: URLResponse?, error: Error?) {
        if error != nil {
            print(error!)
            return
        }
        
        if let safeData = data {
            let dataString = String(data: safeData, encoding: .utf8)
            print(dataString)
        }
    }
    
}
