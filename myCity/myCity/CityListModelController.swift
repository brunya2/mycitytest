//
//  CityListModelController.swift
//  myCity
//
//  Created by Brunya on 09.04.2021.
//
import UIKit

final class CityListModelController {
    
    let cities: [City] = [
        .init(name: "Moscow"),
        .init(name: "Saint Petersburg")
    ]
}

extension CityListModelController {
    struct City {
        let name: String
    }
}
