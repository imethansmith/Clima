//
//  WeatherData.swift
//  Clima
//
//  Created by Ethan Smith on 24/02/21.
//  Copyright © 2021 App Brewery. All rights reserved.
//

import Foundation

struct WeatherData: Decodable {
    let name: String
    let weather: Array<Weather>
    let main: Main
}

struct Weather: Decodable {
    let id: Int
    let description: String
}


struct Main: Decodable {
    let temp: Double
}
