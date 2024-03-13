//
//  Station.swift
//  coredatatest
//
//  Created by Tanawit Poumloyfha on 10/3/2567 BE.
//

import Cocoa

class Station: NSObject {

    var station_id: String
    var station_name: String
    var station_line: String
    var station_linecolor: String
    var latitude: Double
    var longitude: Double
    var is_extended: Bool
    
    init(station_id: String, station_name: String, station_line: String, station_linecolor: String, latitude: Double, longitude: Double, is_extended: Bool) {
        self.station_id = station_id
        self.station_name = station_name
        self.station_line = station_line
        self.station_linecolor = station_linecolor
        self.latitude = latitude
        self.longitude = longitude
        self.is_extended = is_extended
    }
    
}
