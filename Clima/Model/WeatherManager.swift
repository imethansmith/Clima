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
    let weatherURL = "api.openweathermap.org/data/2.5/weather?&units=metric&appid=254f77517e04920912bf344cb3d6482e"
    
    func fetchWeather(cityName: String) {
        let urlString = "\(weatherURL)&q=\(cityName)"
        print(urlString)
    }
}
