//
//  SaveRouteController.swift
//  coredatatest
//
//  Created by Tanawit Poumloyfha on 3/4/2567 BE.
//

import Foundation


func saveFavoriteRoutes(route: Route) {
    var tempStationArray: [String] = []
    for station in route.stations {
        tempStationArray.append(station.station_id)
    }
    let temp: [String: Any] = ["stations": tempStationArray,
                               "fee": route.fee,
                               "time": route.time]
    
    if var savedRoutes = UserDefaults.standard.array(forKey: "SavedRoutes") as? [[String: Any]] {
        var isDuplicate = false
        for savedRoute in savedRoutes {
            if savedRoute["stations"] as! [String] == temp["stations"] as! [String] {
                isDuplicate = true
                break
            }
        }
        
        if isDuplicate {
            print("Route has already been saved.")
        } else {
            savedRoutes.append(temp)
            UserDefaults.standard.set(savedRoutes, forKey: "SavedRoutes")
            
            print("Saved succesfully.")
        }
    } else {
        print("No saved routes found in UserDefaults.")
    }
}


func getFavoriteRoutes() -> [Route] {
    var retrievedRoutes: [Route] = []
    
    let currentDirectoryURL = URL(fileURLWithPath: FileManager.default.currentDirectoryPath)
    let bundleURL = URL(fileURLWithPath: "jsondata.bundle", relativeTo: currentDirectoryURL)
    let bundle = Bundle(url: bundleURL)
    let jsonURL = bundle!.url(forResource: "Stations", withExtension: "json")!

    if let savedRoutes = UserDefaults.standard.array(forKey: "SavedRoutes") as? [[String: Any]] {
        for route in savedRoutes {
            if let stations = route["stations"] as? [String],
               let fee = route["fee"] as? Int,
               let time = route["time"] as? String {
                
                var stationsData: [Station] = []
                
                do {
                    if let jsonData = try? Data(contentsOf: jsonURL) {
                        let decodedData = try JSONDecoder().decode([Station].self, from: jsonData)
                        
                        // Process decoded data
                        for station_id in stations {
                            if let stationInfo = decodedData.first(where: { $0.station_id == station_id }) {
                                let tempStation = Station(station_id: stationInfo.station_id,
                                                          station_name: stationInfo.station_name,
                                                          station_line: stationInfo.station_line,
                                                          station_linecolor: stationInfo.station_linecolor,
                                                          latitude: stationInfo.latitude,
                                                          longitude: stationInfo.longitude,
                                                          is_extended: stationInfo.is_extended,
                                                          start_time_1: stationInfo.start_time_1,
                                                          start_time_2: stationInfo.start_time_2,
                                                          last_time_1: stationInfo.last_time_1,
                                                          last_time_2: stationInfo.last_time_2)
                                
                                stationsData.append(tempStation)
                            }
                        }
                    }
                } catch {
                    print("Error reading or decoding JSON data: \(error)")
                }
                
                let temp = Route(stations: stationsData, fee: fee, time: time)
                retrievedRoutes.append(temp)
            }
        }
    } else {
        print("No saved routes found in UserDefaults.")
    }
    
    return retrievedRoutes
}


func resetFavoriteRoutes() {
    let savedRoutes: [[String: Any]] = []
    UserDefaults.standard.set(savedRoutes, forKey: "SavedRoutes")
    print("Reset successfully.")
}


/* use this one
func getFavoriteRoutes() -> [Route] {
    var retrievedRoutes: [Route] = []

    if let savedRoutes = UserDefaults.standard.array(forKey: "SavedRoutes") as? [[String: Any]] {
        for route in savedRoutes {
            if let stations = route["stations"] as? [String],
               let fee = route["fee"] as? Int,
               let time = route["time"] as? String {
                
                var stationsData: [Station] = []
                
                do {
                    if let url = Bundle.main.url(forResource: "Stations", withExtension: "json") {
                        let data = try Data(contentsOf: url)
                        let decodedData = try JSONDecoder().decode([Station].self, from: data)
                        
                        // Process decoded data
                        for station_id in stations {
                            if let stationInfo = decodedData.first(where: { $0.station_id == station_id }) {
                                let tempStation = Station(station_id: stationInfo.station_id,
                                                          station_name: stationInfo.station_name,
                                                          station_line: stationInfo.station_line,
                                                          station_linecolor: stationInfo.station_linecolor,
                                                          latitude: stationInfo.latitude,
                                                          longitude: stationInfo.longitude,
                                                          is_extended: stationInfo.is_extended,
                                                          start_time_1: stationInfo.start_time_1,
                                                          start_time_2: stationInfo.start_time_2,
                                                          last_time_1: stationInfo.last_time_1,
                                                          last_time_2: stationInfo.last_time_2)
                                
                                stationsData.append(tempStation)
                            }
                        }
                    }
                } catch {
                    print("Error reading or decoding JSON data: \(error)")
                }
                
                let temp = Route(stations: stationsData, fee: fee, time: time)
                retrievedRoutes.append(temp)
            }
        }
    } else {
        print("No saved routes found in UserDefaults.")
    }
    
    return retrievedRoutes
}
*/
