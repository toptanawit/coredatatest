//
//  Route.swift
//  coredatatest
//
//  Created by Tanawit Poumloyfha on 12/3/2567 BE.
//

import Cocoa

class Route: NSObject {
    var stations: [Station]
    var fee: Int
    
    init(stations: [Station], fee: Int) {
        self.stations = stations
        self.fee = fee
    }
}
