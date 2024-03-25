//
//  Station.swift
//  coredatatest
//
//  Created by Tanawit Poumloyfha on 10/3/2567 BE.
//

import Foundation

struct Station: Decodable {

    var station_id: String
    var station_name: String
    var station_line: String
    var station_linecolor: String
    var latitude: Double
    var longitude: Double
    var is_extended: Bool
    var start_time_1: String
    var start_time_2: String
    var start_time_3: String?
    var start_time_4: String?
    var last_time_1: String
    var last_time_2: String
    var last_time_3: String?
    var last_time_4: String?
     
    init(station_id: String, station_name: String, station_line: String, station_linecolor: String, latitude: Double, longitude: Double, is_extended: Bool, start_time_1: String, start_time_2: String, start_time_3: String? = nil, start_time_4: String? = nil, last_time_1: String, last_time_2: String, last_time_3: String? = nil, last_time_4: String? = nil) {
        self.station_id = station_id
        self.station_name = station_name
        self.station_line = station_line
        self.station_linecolor = station_linecolor
        self.latitude = latitude
        self.longitude = longitude
        self.is_extended = is_extended
        self.start_time_1 = start_time_1
        self.start_time_2 = start_time_2
        self.start_time_3 = start_time_3
        self.start_time_4 = start_time_4
        self.last_time_1 = last_time_1
        self.last_time_2 = last_time_2
        self.last_time_3 = last_time_3
        self.last_time_4 = last_time_4
    }
    
}
