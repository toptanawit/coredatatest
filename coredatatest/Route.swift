//
//  Route.swift
//  coredatatest
//
//  Created by Tanawit Poumloyfha on 12/3/2567 BE.
//

import Foundation

struct Route: Decodable {
    var stations: [Station]
    var fee: Int
    var time: String
    
    init(stations: [Station], fee: Int, time: String) {
        self.stations = stations
        self.fee = fee
        self.time = time
    }
}
