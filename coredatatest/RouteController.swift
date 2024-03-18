//
//  RouteController.swift
//  coredatatest
//
//  Created by Tanawit Poumloyfha on 12/3/2567 BE.
//

import Foundation
import CoreData


func getAllPossibleRoutes(start: String, end: String) -> [Route] {
    var adjacencyList: [String: [String]] = [:]
    var stations: [String] = []

    let routes: [[String]] = [
        // east bts
        ["CEN", "E1"], ["E1", "E2"], ["E2", "E3"], ["E3", "E4"], ["E4", "E5"],
        ["E5", "E6"], ["E6", "E7"], ["E7", "E8"], ["E8", "E9"], ["E9", "E10"],
        ["E10", "E11"], ["E11", "E12"], ["E12", "E13"], ["E13", "E14"], ["E14", "E15"],
        ["E15", "E16"], ["E16", "E17"], ["E17", "E18"], ["E18", "E19"], ["E19", "E20"],
        ["E20", "E21"], ["E21", "E22"], ["E22", "E23"],
        // north bts
        ["CEN", "N1"], ["N1", "N2"], ["N2", "N3"], ["N3", "N4"], ["N4", "N5"],
        ["N5", "N7"], ["N7", "N8"], ["N8", "N9"], ["N9", "N10"], ["N10", "N11"],
        ["N11", "N12"], ["N12", "N13"], ["N13", "N14"], ["N14", "N15"], ["N15", "N16"],
        ["N16", "N17"], ["N17", "N18"], ["N18", "N19"], ["N19", "N20"], ["N20", "N21"],
        ["N21", "N22"], ["N22", "N23"], ["N23", "N24"],
        // south bts
        ["CEN", "S1"], ["S1", "S2"], ["S2", "S3"], ["S3", "S4"], ["S4", "S5"],
        ["S5", "S6"], ["S6", "S7"], ["S7", "S8"], ["S8", "S9"], ["S9", "S10"],
        ["S10", "S11"], ["S11", "S12"],
        // west bts
        ["CEN", "W1"],
        // blue mrt
        ["BL01", "BL02"], ["BL02", "BL03"], ["BL03", "BL04"], ["BL04", "BL05"],
        ["BL05", "BL06"], ["BL06", "BL07"], ["BL07", "BL08"], ["BL08", "BL09"],
        ["BL09", "BL10"], ["BL10", "BL11"], ["BL11", "BL12"], ["BL12", "BL13"],
        ["BL13", "BL14"], ["BL14", "BL15"], ["BL15", "BL16"], ["BL16", "BL17"],
        ["BL17", "BL18"], ["BL18", "BL19"], ["BL19", "BL20"], ["BL20", "BL21"],
        ["BL21", "BL22"], ["BL22", "BL23"], ["BL23", "BL24"], ["BL24", "BL25"],
        ["BL25", "BL26"], ["BL26", "BL27"], ["BL27", "BL28"], ["BL28", "BL29"],
        ["BL29", "BL30"], ["BL30", "BL31"], ["BL31", "BL32"],
        ["BL32", "BL01"], ["BL33", "BL01"], ["BL33", "BL34"], ["BL34", "BL35"],
        ["BL35", "BL36"], ["BL36", "BL37"],
        ["BL37", "BL38"],
        // purple mrt
        ["PP01", "PP02"], ["PP02", "PP03"], ["PP03", "PP04"], ["PP04", "PP05"],
        ["PP05", "PP06"], ["PP06", "PP07"], ["PP07", "PP08"], ["PP08", "PP09"],
        ["PP09", "PP10"], ["PP10", "PP11"], ["PP11", "PP12"], ["PP12", "PP13"],
        ["PP13", "PP14"], ["PP14", "PP15"], ["PP15", "PP16"],
        // arl
        ["A1", "A2"], ["A2", "A3"], ["A3", "A4"], ["A4", "A5"], ["A5", "A6"],
        ["A6", "A7"], ["A7", "A8"],
        // intersect
        ["E4", "BL22"], ["A6", "BL21"], ["S2", "BL26"], ["N8", "BL13"],
        ["N9", "BL14"], ["PP16", "BL10"], ["S12", "BL34"], ["N2", "A8"]
    ]

    let fetchRequest = NSFetchRequest<NSFetchRequestResult>(entityName: "Stations")
    do {
        let results = try context.fetch(fetchRequest) as! [Stations]
        for result in results {
            stations.append(result.station_id!)
        }
    } catch {
        print("Failed to fetch data: \(error)")
    }

    func addNode(station: String) {
        adjacencyList[station] = []
    }

    func addEdge(origin: String, destination: String) {
        adjacencyList[origin]?.append(destination)
        adjacencyList[destination]?.append(origin)
    }

    for station in stations {
        addNode(station: station)
    }

    for route in routes {
        addEdge(origin: route[0], destination: route[1])
    }

    func findAllRoutes(start: String, end: String) -> [[String]] {
        var routes: [[String]] = []
        var queue: Queue<[String]> = Queue()
        var visited: Set<String> = []

        queue.enqueue([start])

        while !queue.isEmpty {
            let currentPath = queue.dequeue()!
            let currentNode = currentPath.last!

            if currentNode == end {
                routes.append(currentPath)
                continue
            }

            visited.insert(currentNode)
            let neighbors = adjacencyList[currentNode] ?? []

            for neighbor in neighbors {
                if !visited.contains(neighbor) {
                    var newPath = currentPath
                    newPath.append(neighbor)
                    queue.enqueue(newPath)
                }
            }
        }

        return routes
    }
    
    let result = findAllRoutes(start: start, end: end)
    var stationsAllData: [[Station]] = []
    
    do {
        if let url = Bundle.main.url(forResource: "Stations", withExtension: "json") {
            let data = try Data(contentsOf: url)
            let decodedData = try JSONDecoder().decode([Station].self, from: data)

            // Process decoded data
            for routes in result {
                var stationsData: [Station] = []

                for route in routes {
                    if let stationInfo = decodedData.first(where: { $0.station_id == route }) {
                        let tempStation = Station(station_id: stationInfo.station_id,
                                                  station_name: stationInfo.station_name,
                                                  station_line: stationInfo.station_line,
                                                  station_linecolor: stationInfo.station_linecolor,
                                                  latitude: stationInfo.latitude,
                                                  longitude: stationInfo.longitude,
                                                  is_extended: stationInfo.is_extended)

                        stationsData.append(tempStation)
                    }
                }

                stationsAllData.append(stationsData)
            }
        }
    } catch {
        print("Error reading or decoding JSON data: \(error)")
    }

    
    //fees
    var allFees: [Int] = []
    for stations in stationsAllData {
        var fees = 0
        var bCount = 0
        var mCount = 0
        var mpCount = 0
        var aCount = 0
        var extended = false

        for station in stations {
            if station.station_line == "bts" {
                bCount += 1
                if station.is_extended {
                    extended = true
                }
            } else if station.station_line == "mrt" && station.station_linecolor == "blue" {
                mCount += 1
            } else if station.station_line == "mrt" && station.station_linecolor == "purple" {
                mpCount += 1
            } else {
                aCount += 1
            }
        }
        
        if stations[0].station_line == "bts" {
            bCount -= 1
        } else if stations[0].station_line == "mrt" && stations[0].station_linecolor == "blue" {
            mCount -= 1
        } else if stations[0].station_line == "mrt" && stations[0].station_linecolor == "purple" {
            mpCount -= 1
        } else {
            aCount -= 1
        }

        if bCount == 1 {
            fees += 16
            if extended { fees += 1 }
        } else if bCount == 2 {
            fees += 23
            if extended { fees += 2 }
        } else if bCount == 3 {
            fees += 26
            if extended { fees += 2 }
        } else if bCount == 4 {
            fees += 30
            if extended { fees += 2 }
        } else if bCount == 5 {
            fees += 33
            if extended { fees += 2 }
        } else if bCount == 6 {
            fees += 37
            if extended { fees += 3 }
        } else if bCount == 7 {
            fees += 40
            if extended { fees += 3 }
        } else if bCount >= 8 {
            fees += 44
            if extended { fees += 3 }
        }

        if mCount == 1 {
            fees += 16
        } else if mCount == 2 {
            fees += 19
        } else if mCount == 3 {
            fees += 21
        } else if mCount == 4 {
            fees += 23
        } else if mCount == 5 {
            fees += 25
        } else if mCount == 6 {
            fees += 28
        } else if mCount == 7 {
            fees += 30
        } else if mCount == 8 {
            fees += 32
        } else if mCount == 9 {
            fees += 35
        } else if mCount == 10 {
            fees += 37
        } else if mCount == 11 {
            fees += 39
        } else if mCount >= 12 {
            fees += 42
        }

        if mpCount == 1 {
            fees += 17
        } else if mpCount == 2 {
            fees += 20
        } else if mpCount == 3 {
            fees += 23
        } else if mpCount == 4 {
            fees += 25
        } else if mpCount == 5 {
            fees += 27
        } else if mpCount == 6 {
            fees += 30
        } else if mpCount == 7 {
            fees += 33
        } else if mpCount == 8 {
            fees += 36
        } else if mpCount == 9 {
            fees += 38
        } else if mpCount == 10 {
            fees += 40
        } else if mpCount >= 11 {
            fees += 42
        }

        if aCount == 1 {
            fees += 15
        } else if aCount == 2 {
            fees += 20
        } else if aCount == 3 {
            fees += 25
        } else if aCount == 4 {
            fees += 30
        } else if aCount == 5 {
            fees += 35
        } else if aCount == 6 {
            fees += 40
        } else if aCount == 7 {
            fees += 45
        }

        allFees.append(fees)
    }
    
    
    //time

    

    var allRoutes: [Route] = []
        
    for (index, element) in stationsAllData.enumerated() {
        allRoutes.append(Route(stations: element, fee: allFees[index]))
    }

    return allRoutes
}



// for command line only
func getAllPossibleRoutes2(start: String, end: String) -> [Route] {
    var adjacencyList: [String: [String]] = [:]
    var stations: [String] = []

    let routes: [[String]] = [
        // east bts
        ["CEN", "E1"], ["E1", "E2"], ["E2", "E3"], ["E3", "E4"], ["E4", "E5"],
        ["E5", "E6"], ["E6", "E7"], ["E7", "E8"], ["E8", "E9"], ["E9", "E10"],
        ["E10", "E11"], ["E11", "E12"], ["E12", "E13"], ["E13", "E14"], ["E14", "E15"],
        ["E15", "E16"], ["E16", "E17"], ["E17", "E18"], ["E18", "E19"], ["E19", "E20"],
        ["E20", "E21"], ["E21", "E22"], ["E22", "E23"],
        // north bts
        ["CEN", "N1"], ["N1", "N2"], ["N2", "N3"], ["N3", "N4"], ["N4", "N5"],
        ["N5", "N7"], ["N7", "N8"], ["N8", "N9"], ["N9", "N10"], ["N10", "N11"],
        ["N11", "N12"], ["N12", "N13"], ["N13", "N14"], ["N14", "N15"], ["N15", "N16"],
        ["N16", "N17"], ["N17", "N18"], ["N18", "N19"], ["N19", "N20"], ["N20", "N21"],
        ["N21", "N22"], ["N22", "N23"], ["N23", "N24"],
        // south bts
        ["CEN", "S1"], ["S1", "S2"], ["S2", "S3"], ["S3", "S4"], ["S4", "S5"],
        ["S5", "S6"], ["S6", "S7"], ["S7", "S8"], ["S8", "S9"], ["S9", "S10"],
        ["S10", "S11"], ["S11", "S12"],
        // west bts
        ["CEN", "W1"],
        // blue mrt
        ["BL01", "BL02"], ["BL02", "BL03"], ["BL03", "BL04"], ["BL04", "BL05"],
        ["BL05", "BL06"], ["BL06", "BL07"], ["BL07", "BL08"], ["BL08", "BL09"],
        ["BL09", "BL10"], ["BL10", "BL11"], ["BL11", "BL12"], ["BL12", "BL13"],
        ["BL13", "BL14"], ["BL14", "BL15"], ["BL15", "BL16"], ["BL16", "BL17"],
        ["BL17", "BL18"], ["BL18", "BL19"], ["BL19", "BL20"], ["BL20", "BL21"],
        ["BL21", "BL22"], ["BL22", "BL23"], ["BL23", "BL24"], ["BL24", "BL25"],
        ["BL25", "BL26"], ["BL26", "BL27"], ["BL27", "BL28"], ["BL28", "BL29"],
        ["BL29", "BL30"], ["BL30", "BL31"], ["BL31", "BL32"],
        ["BL32", "BL01"], ["BL33", "BL01"], ["BL33", "BL34"], ["BL34", "BL35"],
        ["BL35", "BL36"], ["BL36", "BL37"],
        ["BL37", "BL38"],
        // purple mrt
        ["PP01", "PP02"], ["PP02", "PP03"], ["PP03", "PP04"], ["PP04", "PP05"],
        ["PP05", "PP06"], ["PP06", "PP07"], ["PP07", "PP08"], ["PP08", "PP09"],
        ["PP09", "PP10"], ["PP10", "PP11"], ["PP11", "PP12"], ["PP12", "PP13"],
        ["PP13", "PP14"], ["PP14", "PP15"], ["PP15", "PP16"],
        // arl
        ["A1", "A2"], ["A2", "A3"], ["A3", "A4"], ["A4", "A5"], ["A5", "A6"],
        ["A6", "A7"], ["A7", "A8"],
        // intersect
        ["E4", "BL22"], ["A6", "BL21"], ["S2", "BL26"], ["N8", "BL13"],
        ["N9", "BL14"], ["PP16", "BL10"], ["S12", "BL34"], ["N2", "A8"]
    ]

    let fetchRequest = NSFetchRequest<NSFetchRequestResult>(entityName: "Stations")
    do {
        let results = try context.fetch(fetchRequest) as! [Stations]
        for result in results {
            stations.append(result.station_id!)
        }
    } catch {
        print("Failed to fetch data: \(error)")
    }

    func addNode(station: String) {
        adjacencyList[station] = []
    }

    func addEdge(origin: String, destination: String) {
        adjacencyList[origin]?.append(destination)
        adjacencyList[destination]?.append(origin)
    }

    for station in stations {
        addNode(station: station)
    }

    for route in routes {
        addEdge(origin: route[0], destination: route[1])
    }

    func findAllRoutes(start: String, end: String) -> [[String]] {
        var routes: [[String]] = []
        var queue: Queue<[String]> = Queue()
        var visited: Set<String> = []

        queue.enqueue([start])

        while !queue.isEmpty {
            let currentPath = queue.dequeue()!
            let currentNode = currentPath.last!

            if currentNode == end {
                routes.append(currentPath)
                continue
            }

            visited.insert(currentNode)
            let neighbors = adjacencyList[currentNode] ?? []

            for neighbor in neighbors {
                if !visited.contains(neighbor) {
                    var newPath = currentPath
                    newPath.append(neighbor)
                    queue.enqueue(newPath)
                }
            }
        }

        return routes
    }
    
    let result = findAllRoutes(start: start, end: end)
    var stationsAllData: [[Station]] = []
    
    let currentDirectoryURL = URL(fileURLWithPath: FileManager.default.currentDirectoryPath)
    let bundleURL = URL(fileURLWithPath: "jsondata.bundle", relativeTo: currentDirectoryURL)
    let bundle = Bundle(url: bundleURL)
    let jsonURL = bundle!.url(forResource: "Stations", withExtension: "json")!
    
    do {
        if let jsonData = try? Data(contentsOf: jsonURL) {
            let decodedData = try JSONDecoder().decode([Station].self, from: jsonData)

            // Process decoded data
            for routes in result {
                var stationsData: [Station] = []

                for route in routes {
                    if let stationInfo = decodedData.first(where: { $0.station_id == route }) {
                        let tempStation = Station(station_id: stationInfo.station_id,
                                                  station_name: stationInfo.station_name,
                                                  station_line: stationInfo.station_line,
                                                  station_linecolor: stationInfo.station_linecolor,
                                                  latitude: stationInfo.latitude,
                                                  longitude: stationInfo.longitude,
                                                  is_extended: stationInfo.is_extended)

                        stationsData.append(tempStation)
                    }
                }

                stationsAllData.append(stationsData)
            }
        }
    } catch {
        print("Error reading or decoding JSON data: \(error)")
    }

    
    //fees
    var allFees: [Int] = []
    for stations in stationsAllData {
        var fees = 0
        var bCount = 0
        var mCount = 0
        var mpCount = 0
        var aCount = 0
        var extended = false

        for station in stations {
            if station.station_line == "bts" {
                bCount += 1
                if station.is_extended {
                    extended = true
                }
            } else if station.station_line == "mrt" && station.station_linecolor == "blue" {
                mCount += 1
            } else if station.station_line == "mrt" && station.station_linecolor == "purple" {
                mpCount += 1
            } else {
                aCount += 1
            }
        }
        
        if stations[0].station_line == "bts" {
            bCount -= 1
        } else if stations[0].station_line == "mrt" && stations[0].station_linecolor == "blue" {
            mCount -= 1
        } else if stations[0].station_line == "mrt" && stations[0].station_linecolor == "purple" {
            mpCount -= 1
        } else {
            aCount -= 1
        }

        if bCount == 1 {
            fees += 16
            if extended { fees += 1 }
        } else if bCount == 2 {
            fees += 23
            if extended { fees += 2 }
        } else if bCount == 3 {
            fees += 26
            if extended { fees += 2 }
        } else if bCount == 4 {
            fees += 30
            if extended { fees += 2 }
        } else if bCount == 5 {
            fees += 33
            if extended { fees += 2 }
        } else if bCount == 6 {
            fees += 37
            if extended { fees += 3 }
        } else if bCount == 7 {
            fees += 40
            if extended { fees += 3 }
        } else if bCount >= 8 {
            fees += 44
            if extended { fees += 3 }
        }

        if mCount == 1 {
            fees += 16
        } else if mCount == 2 {
            fees += 19
        } else if mCount == 3 {
            fees += 21
        } else if mCount == 4 {
            fees += 23
        } else if mCount == 5 {
            fees += 25
        } else if mCount == 6 {
            fees += 28
        } else if mCount == 7 {
            fees += 30
        } else if mCount == 8 {
            fees += 32
        } else if mCount == 9 {
            fees += 35
        } else if mCount == 10 {
            fees += 37
        } else if mCount == 11 {
            fees += 39
        } else if mCount >= 12 {
            fees += 42
        }

        if mpCount == 1 {
            fees += 17
        } else if mpCount == 2 {
            fees += 20
        } else if mpCount == 3 {
            fees += 23
        } else if mpCount == 4 {
            fees += 25
        } else if mpCount == 5 {
            fees += 27
        } else if mpCount == 6 {
            fees += 30
        } else if mpCount == 7 {
            fees += 33
        } else if mpCount == 8 {
            fees += 36
        } else if mpCount == 9 {
            fees += 38
        } else if mpCount == 10 {
            fees += 40
        } else if mpCount >= 11 {
            fees += 42
        }

        if aCount == 1 {
            fees += 15
        } else if aCount == 2 {
            fees += 20
        } else if aCount == 3 {
            fees += 25
        } else if aCount == 4 {
            fees += 30
        } else if aCount == 5 {
            fees += 35
        } else if aCount == 6 {
            fees += 40
        } else if aCount == 7 {
            fees += 45
        }

        allFees.append(fees)
    }
    
    
    //time

    

    var allRoutes: [Route] = []
        
    for (index, element) in stationsAllData.enumerated() {
        allRoutes.append(Route(stations: element, fee: allFees[index]))
    }

    return allRoutes
}

