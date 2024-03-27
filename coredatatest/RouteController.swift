//
//  RouteController.swift
//  coredatatest
//
//  Created by Tanawit Poumloyfha on 12/3/2567 BE.
//

import Foundation

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
    ["N9", "BL14"], ["PP16", "BL10"], ["S12", "BL34"], ["N2", "A8"],
    // gold bts
    ["G1", "G2"], ["G2", "G3"],
    // yellow mrt
    ["YL01", "YL02"], ["YL02", "YL03"], ["YL03", "YL04"], ["YL04", "YL05"],
    ["YL05", "YL06"], ["YL06", "YL07"], ["YL07", "YL08"], ["YL08", "YL09"],
    ["YL09", "YL10"], ["YL10", "YL11"], ["YL11", "YL12"], ["YL12", "YL13"],
    ["YL13", "YL14"], ["YL14", "YL15"], ["YL15", "YL16"], ["YL16", "YL17"],
    ["YL17", "YL18"], ["YL18", "YL19"], ["YL19", "YL20"], ["YL20", "YL21"],
    ["YL21", "YL22"], ["YL22", "YL23"],
    // pink mrt
    ["PK01", "PK02"], ["PK02", "PK03"], ["PK03", "PK04"], ["PK04", "PK05"],
    ["PK05", "PK06"], ["PK06", "PK07"], ["PK07", "PK08"], ["PK08", "PK09"],
    ["PK09", "PK10"], ["PK10", "PK11"], ["PK11", "PK12"], ["PK12", "PK13"],
    ["PK13", "PK14"], ["PK14", "PK15"], ["PK15", "PK16"], ["PK16", "PK17"],
    ["PK17", "PK18"], ["PK18", "PK19"],
    ["PK19", "PK20"], ["PK20", "PK21"], ["PK21", "PK22"], ["PK22", "PK23"],
    ["PK23", "PK24"], ["PK24", "PK25"], ["PK25", "PK26"], ["PK26", "PK27"],
    ["PK27", "PK28"], ["PK28", "PK29"], ["PK29", "PK30"],
    // darkred srt
    ["RCEN", "RN01"], ["RN01", "RN02"], ["RN02", "RN03"], ["RN03", "RN04"],
    ["RN04", "RN05"], ["RN05", "RN06"], ["RN06", "RN07"], ["RN07", "RN08"],
    ["RN08", "RN09"],
    // lightred srt
    ["RCEN", "RL01"], ["RL01", "RL02"], ["RL02", "RL03"],
    // new intersect
    ["E15", "YL23"], ["A4", "YL11"], ["BL15", "YL01"], ["S7", "G1"],
    ["BL11", "RCEN"], ["RL01", "PP15"], ["PP11", "PK01"], ["PK14", "RN05"],
    ["PK16", "N17"]
]


var stationLineColors: [String: String] = [
    // east bts
    "CEN": "lightgreen", "E1": "lightgreen", "E2": "lightgreen", "E3": "lightgreen", "E4": "lightgreen",
    "E5": "lightgreen", "E6": "lightgreen", "E7": "lightgreen", "E8": "lightgreen", "E9": "lightgreen",
    "E10": "lightgreen", "E11": "lightgreen", "E12": "lightgreen", "E13": "lightgreen", "E14": "lightgreen",
    "E15": "lightgreen", "E16": "lightgreen", "E17": "lightgreen", "E18": "lightgreen", "E19": "lightgreen",
    "E20": "lightgreen", "E21": "lightgreen", "E22": "lightgreen", "E23": "lightgreen",
    // north bts
    "N1": "lightgreen", "N2": "lightgreen", "N3": "lightgreen", "N4": "lightgreen", "N5": "lightgreen",
    "N7": "lightgreen", "N8": "lightgreen", "N9": "lightgreen", "N10": "lightgreen", "N11": "lightgreen",
    "N12": "lightgreen", "N13": "lightgreen", "N14": "lightgreen", "N15": "lightgreen", "N16": "lightgreen",
    "N17": "lightgreen", "N18": "lightgreen", "N19": "lightgreen", "N20": "lightgreen", "N21": "lightgreen",
    "N22": "lightgreen", "N23": "lightgreen", "N24": "lightgreen",
    // south bts
    "S1": "darkgreen", "S2": "darkgreen", "S3": "darkgreen", "S4": "darkgreen", "S5": "darkgreen",
    "S6": "darkgreen", "S7": "darkgreen", "S8": "darkgreen", "S9": "darkgreen", "S10": "darkgreen",
    "S11": "darkgreen", "S12": "darkgreen",
    // west bts
    "W1": "darkgreen",
    // blue mrt
    "BL01": "blue", "BL02": "blue", "BL03": "blue", "BL04": "blue",
    "BL05": "blue", "BL06": "blue", "BL07": "blue", "BL08": "blue",
    "BL09": "blue", "BL10": "blue", "BL11": "blue", "BL12": "blue",
    "BL13": "blue", "BL14": "blue", "BL15": "blue", "BL16": "blue",
    "BL17": "blue", "BL18": "blue", "BL19": "blue", "BL20": "blue",
    "BL21": "blue", "BL22": "blue", "BL23": "blue", "BL24": "blue",
    "BL25": "blue", "BL26": "blue", "BL27": "blue", "BL28": "blue",
    "BL29": "blue", "BL30": "blue", "BL31": "blue", "BL32": "blue",
    "BL33": "blue", "BL34": "blue", "BL35": "blue", "BL36": "blue",
    "BL37": "blue", "BL38": "blue",
    // purple mrt
    "PP01": "purple", "PP02": "purple", "PP03": "purple", "PP04": "purple",
    "PP05": "purple", "PP06": "purple", "PP07": "purple", "PP08": "purple",
    "PP09": "purple", "PP10": "purple", "PP11": "purple", "PP12": "purple",
    "PP13": "purple", "PP14": "purple", "PP15": "purple", "PP16": "purple",
    // arl
    "A1": "red", "A2": "red", "A3": "red", "A4": "red",
    "A5": "red", "A6": "red", "A7": "red", "A8": "red",
    // gold bts
    "G1": "gold", "G2": "gold", "G3": "gold",
    // yellow mrt
    "YL01": "yellow", "YL02": "yellow", "YL03": "yellow", "YL04": "yellow",
    "YL05": "yellow", "YL06": "yellow", "YL07": "yellow", "YL08": "yellow",
    "YL09": "yellow", "YL10": "yellow",
    "YL11": "yellow", "YL12": "yellow", "YL13": "yellow", "YL14": "yellow",
    "YL15": "yellow", "YL16": "yellow", "YL17": "yellow", "YL18": "yellow",
    "YL19": "yellow", "YL20": "yellow", "YL21": "yellow", "YL22": "yellow",
    "YL23": "yellow",
    // pink mrt
    "PK01": "pink", "PK02": "pink", "PK03": "pink", "PK04": "pink",
    "PK05": "pink", "PK06": "pink", "PK07": "pink", "PK08": "pink",
    "PK09": "pink", "PK10": "pink", "PK11": "pink", "PK12": "pink",
    "PK13": "pink", "PK14": "pink", "PK15": "pink", "PK16": "pink",
    "PK17": "pink", "PK18": "pink", "PK19": "pink", "PK20": "pink",
    "PK21": "pink", "PK22": "pink", "PK23": "pink", "PK24": "pink",
    "PK25": "pink", "PK26": "pink", "PK27": "pink", "PK28": "pink",
    "PK29": "pink", "PK30": "pink",
    // darkred srt
    "RCEN": "darkred", "RN01": "darkred", "RN02": "darkred", "RN03": "darkred",
    "RN04": "darkred", "RN05": "darkred", "RN06": "darkred", "RN07": "darkred",
    "RN08": "darkred", "RN09": "darkred",
    // lightred srt
    "RL01": "lightred", "RL02": "lightred", "RL03": "lightred"
]

// use this one
func getAllPossibleRoutes(start: String, end: String) -> [Route] {
    
    var adjacencyList: [String: [String]] = [:]

    for route in routes {
        let station1 = route[0]
        let station2 = route[1]
        
        if var adjacentStations = adjacencyList[station1] {
            adjacentStations.append(station2)
            adjacencyList[station1] = adjacentStations
        } else {
            adjacencyList[station1] = [station2]
        }
        
        if var adjacentStations = adjacencyList[station2] {
            adjacentStations.append(station1)
            adjacencyList[station2] = adjacentStations
        } else {
            adjacencyList[station2] = [station1]
        }
    }
    
    func countLineChanges(route: [String], stationLineColors: [String: String]) -> (Int, [String]) {
        var lineChanges = 0
        var nextLineColors: [String] = []
        
        guard route.count >= 2 else {
            return (lineChanges, nextLineColors)
        }
        
        for i in 0..<route.count - 1 {
            let currentStation = route[i]
            let nextStation = route[i + 1]
            
            if let currentLineColor = stationLineColors[currentStation], let nextLineColor = stationLineColors[nextStation] {
                if currentLineColor != nextLineColor {
                    lineChanges += 1
                    nextLineColors.append(nextLineColor)
                }
            }
        }
        
        return (lineChanges, nextLineColors)
    }
    
    func findAllRoutesWithLineChanges(start: String, end: String, adjacencyList: [String: [String]], stationLineColors: [String: String], maxRoutes: Int) -> [[String]] {
        var routes: [[String]] = []
        var queue: [(path: [String], lineChanges: Int, visited: Set<String>)] = [([start], 0, [start])]
        
        while !queue.isEmpty && routes.count < maxRoutes {
            let (path, lineChanges, visited) = queue.removeFirst()
            let currentNode = path.last!
            
            if currentNode == end {
                routes.append(path)
                continue
            }
            
            let neighbors = adjacencyList[currentNode] ?? []
            
            for neighbor in neighbors {
                let lineColor = stationLineColors[neighbor] ?? "Unknown"
                let currentLineColor = stationLineColors[currentNode] ?? "Unknown"
                var changes = lineChanges
                
                if lineColor != currentLineColor {
                    changes += 1
                }
                
                if !visited.contains(neighbor) {
                    var newPath = path
                    newPath.append(neighbor)
                    var newVisited = visited
                    newVisited.insert(neighbor)
                    queue.append((newPath, changes, newVisited))
                }
            }
        }
        
        // Sort routes based on line changes
        routes.sort { (route1: [String], route2: [String]) in
            let lineChanges1 = countLineChanges(route: route1, stationLineColors: stationLineColors).0
            let lineChanges2 = countLineChanges(route: route2, stationLineColors: stationLineColors).0
            return lineChanges1 < lineChanges2
        }

        
        return routes
    }
    
    
    let result = findAllRoutesWithLineChanges(start: start, end: end, adjacencyList: adjacencyList, stationLineColors: stationLineColors, maxRoutes: 3)
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
                                                  is_extended: stationInfo.is_extended,
                                                  start_time_1: stationInfo.start_time_1,
                                                  start_time_2: stationInfo.start_time_2,
                                                  last_time_1: stationInfo.last_time_1,
                                                  last_time_2: stationInfo.last_time_2)
                        
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
    var allTotalTime: [String] = []

    for stations in stationsAllData {
        var fees = 0
        var bCount = 0
        var mCount = 0
        var mpCount = 0
        var aCount = 0
        var extended = false

        var gCount = 0
        var ylCount = 0
        var pkCount = 0
        var drCount = 0
        var lrCount = 0
        
        var station_id: [String] = []

        // count no of stations
        for station in stations {
            if station.station_line == "bts" {
                if station.station_linecolor == "gold" {
                    gCount += 1
                } else { // lightgreen and darkgreen
                    bCount += 1
                    if station.is_extended {
                        extended = true
                    }
                }
            } else if station.station_line == "mrt" {
                if station.station_linecolor == "blue" {
                    mCount += 1
                } else if station.station_linecolor == "purple" {
                    mpCount += 1
                } else if station.station_linecolor == "yellow" {
                    ylCount += 1
                } else { // pink
                    pkCount += 1
                }
            } else if station.station_line == "srt" {
                if station.station_linecolor == "darkred" {
                    drCount += 1
                } else { // lightred
                    lrCount += 1
                }
            } else if station.station_line == "arl" {
                aCount += 1
            }
            station_id.append(station.station_id)
        }
        
        // remove the first station count
        if stations[0].station_line == "bts" {
            if stations[0].station_linecolor == "gold" {
                gCount -= 1
            } else { // lightgreen and darkgreen
                bCount -= 1
            }
        } else if stations[0].station_line == "mrt" {
            if stations[0].station_linecolor == "blue" {
                mCount -= 1
            } else if stations[0].station_linecolor == "purple" {
                mpCount -= 1
            } else if stations[0].station_linecolor == "yellow" {
                ylCount -= 1
            } else { // pink
                pkCount -= 1
            }
        } else if stations[0].station_line == "srt" { // darkred and lightred
            if stations[0].station_linecolor == "darkred" {
                drCount += 1
            } else { // lightred
                lrCount += 1
            }
        } else if stations[0].station_line == "arl" {
            aCount -= 1
        }
        
        // remove station when line change
        let changes = countLineChanges(route: station_id, stationLineColors: stationLineColors).1
        for (index, change) in changes.enumerated() {
            if change == "lightgreen" || change == "darkgreen" {
                if index+1 <= changes.count-1 {
                    if changes[index+1] == "lightgreen" || changes[index+1] == "darkgreen" {
                        continue
                    }
                }
                bCount -= 1
            } else if change == "gold" {
                gCount -= 1
            } else if change == "blue" {
                mCount -= 1
            } else if change == "purple" {
                mpCount -= 1
            } else if change == "red" {
                aCount -= 1
            } else if change == "yellow" {
                ylCount -= 1
            } else if change == "pink" {
                pkCount -= 1
            } else if change == "darkred" {
                drCount -= 1
            } else { // lightred
                lrCount -= 1
            }
        }
//        print(changes)
//        print(bCount,mCount,mpCount,aCount,gCount,ylCount,pkCount,drCount,lrCount)
        
        // bts fee
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

        // mrt blue fee
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

        // mrt purple fee
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

        // arl fee
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

        // gold fee
        if gCount > 0 { fees += 16 }
        
        // yellow fee
        if ylCount == 1 {
            fees += 18
        } else if ylCount == 2 {
            fees += 22
        } else if ylCount == 3 {
            fees += 24
        } else if ylCount == 4 {
            fees += 27
        } else if ylCount == 5 {
            fees += 30
        } else if ylCount == 6 {
            fees += 33
        } else if ylCount == 7 {
            fees += 38
        } else if ylCount == 8 {
            fees += 42
        } else if ylCount >= 9 {
            fees += 45
        }
        
        // pink fee
        if pkCount == 1 {
            fees += 17
        } else if pkCount == 2 {
            fees += 21
        } else if pkCount == 3 {
            fees += 23
        } else if pkCount == 4 {
            fees += 26
        } else if pkCount == 5 {
            fees += 28
        } else if pkCount == 6 {
            fees += 30
        } else if pkCount == 7 {
            fees += 36
        } else if pkCount == 8 {
            fees += 39
        } else if pkCount == 9 {
            fees += 41
        } else if pkCount == 10 {
            fees += 44
        } else if pkCount >= 11 {
            fees += 45
        }
        
        // srt fee
        let srtCount = drCount + lrCount
        if srtCount == 1 {
            fees += 14
        } else if srtCount == 2 {
            fees += 16
        } else if srtCount == 3 {
            fees += 19
        } else if srtCount == 4 {
            fees += 23
        } else if srtCount == 5 {
            fees += 26
        } else if srtCount == 6 {
            fees += 29
        } else if srtCount == 7 {
            fees += 33
        } else if srtCount == 8 {
            fees += 39
        } else if srtCount >= 9 {
            fees += 42
        }

        allFees.append(fees)
        
        //time
        var totalTime: TimeInterval = 0
        
        // each bts station take est 2 mins
        totalTime += Double(bCount * (2 * 60))
        
        // each mrt blue station take est 2 mins
        totalTime += Double(mCount * (2 * 60))
        
        // each mrt purple station take est 3 mins
        totalTime += Double(mpCount * (3 * 60))
        
        // each arl station take est 3 mins 40 secs
        totalTime += Double(aCount * (3 * 60 + 40))
        
        // each gold station take est 4 mins
        totalTime += Double(gCount * (4 * 60))
        
        // each yellow station take est 2 mins
        totalTime += Double(ylCount * (2 * 60))
        
        // each pink station take est 2 mins
        totalTime += Double(pkCount * (2 * 60))
        
        // each darkred station take est 2 mins 50 secs
        totalTime += Double(drCount * (2 * 60 + 50))
        
        // each lightred station take est 5 mins 20 secs
        totalTime += Double(lrCount * (5 * 60 + 20))
        
        allTotalTime.append(totalTime.toTimeSpan().toDateString())
        
    }
    
    var allRoutes: [Route] = []
        
    for (index, element) in stationsAllData.enumerated() {
        allRoutes.append(Route(stations: element, fee: allFees[index], time: allTotalTime[index]))
    }
    
    return allRoutes
}



// for command line only
func getAllPossibleRoutes2(start: String, end: String) -> [Route] {
    
    var adjacencyList: [String: [String]] = [:]

    for route in routes {
        let station1 = route[0]
        let station2 = route[1]
        
        if var adjacentStations = adjacencyList[station1] {
            adjacentStations.append(station2)
            adjacencyList[station1] = adjacentStations
        } else {
            adjacencyList[station1] = [station2]
        }
        
        if var adjacentStations = adjacencyList[station2] {
            adjacentStations.append(station1)
            adjacencyList[station2] = adjacentStations
        } else {
            adjacencyList[station2] = [station1]
        }
    }
    
    func countLineChanges(route: [String], stationLineColors: [String: String]) -> (Int, [String]) {
        var lineChanges = 0
        var nextLineColors: [String] = []
        
        guard route.count >= 2 else {
            return (lineChanges, nextLineColors)
        }
        
        for i in 0..<route.count - 1 {
            let currentStation = route[i]
            let nextStation = route[i + 1]
            
            if let currentLineColor = stationLineColors[currentStation], let nextLineColor = stationLineColors[nextStation] {
                if currentLineColor != nextLineColor {
                    lineChanges += 1
                    nextLineColors.append(nextLineColor)
                }
            }
        }
        
        return (lineChanges, nextLineColors)
    }
    
    func findAllRoutesWithLineChanges(start: String, end: String, adjacencyList: [String: [String]], stationLineColors: [String: String], maxRoutes: Int) -> [[String]] {
        var routes: [[String]] = []
        var queue: [(path: [String], lineChanges: Int, visited: Set<String>)] = [([start], 0, [start])]
        
        while !queue.isEmpty && routes.count < maxRoutes {
            let (path, lineChanges, visited) = queue.removeFirst()
            let currentNode = path.last!
            
            if currentNode == end {
                routes.append(path)
                continue
            }
            
            let neighbors = adjacencyList[currentNode] ?? []
            
            for neighbor in neighbors {
                let lineColor = stationLineColors[neighbor] ?? "Unknown"
                let currentLineColor = stationLineColors[currentNode] ?? "Unknown"
                var changes = lineChanges
                
                if lineColor != currentLineColor {
                    changes += 1
                }
                
                if !visited.contains(neighbor) {
                    var newPath = path
                    newPath.append(neighbor)
                    var newVisited = visited
                    newVisited.insert(neighbor)
                    queue.append((newPath, changes, newVisited))
                }
            }
        }
        
        // Sort routes based on line changes
        routes.sort { (route1: [String], route2: [String]) in
            let lineChanges1 = countLineChanges(route: route1, stationLineColors: stationLineColors).0
            let lineChanges2 = countLineChanges(route: route2, stationLineColors: stationLineColors).0
            return lineChanges1 < lineChanges2
        }

        
        return routes
    }
    
    let currentDirectoryURL = URL(fileURLWithPath: FileManager.default.currentDirectoryPath)
    let bundleURL = URL(fileURLWithPath: "jsondata.bundle", relativeTo: currentDirectoryURL)
    let bundle = Bundle(url: bundleURL)
    let jsonURL = bundle!.url(forResource: "Stations", withExtension: "json")!
    
    let result = findAllRoutesWithLineChanges(start: start, end: end, adjacencyList: adjacencyList, stationLineColors: stationLineColors, maxRoutes: 3)
    var stationsAllData: [[Station]] = []
    
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
                                                  is_extended: stationInfo.is_extended,
                                                  start_time_1: stationInfo.start_time_1,
                                                  start_time_2: stationInfo.start_time_2,
                                                  last_time_1: stationInfo.last_time_1,
                                                  last_time_2: stationInfo.last_time_2)
                        
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
    var allTotalTime: [String] = []

    for stations in stationsAllData {
        var fees = 0
        var bCount = 0
        var mCount = 0
        var mpCount = 0
        var aCount = 0
        var extended = false

        var gCount = 0
        var ylCount = 0
        var pkCount = 0
        var drCount = 0
        var lrCount = 0
        
        var station_id: [String] = []

        // count no of stations
        for station in stations {
            if station.station_line == "bts" {
                if station.station_linecolor == "gold" {
                    gCount += 1
                } else { // lightgreen and darkgreen
                    bCount += 1
                    if station.is_extended {
                        extended = true
                    }
                }
            } else if station.station_line == "mrt" {
                if station.station_linecolor == "blue" {
                    mCount += 1
                } else if station.station_linecolor == "purple" {
                    mpCount += 1
                } else if station.station_linecolor == "yellow" {
                    ylCount += 1
                } else { // pink
                    pkCount += 1
                }
            } else if station.station_line == "srt" {
                if station.station_linecolor == "darkred" {
                    drCount += 1
                } else { // lightred
                    lrCount += 1
                }
            } else if station.station_line == "arl" {
                aCount += 1
            }
            station_id.append(station.station_id)
        }
        
        // remove the first station count
        if stations[0].station_line == "bts" {
            if stations[0].station_linecolor == "gold" {
                gCount -= 1
            } else { // lightgreen and darkgreen
                bCount -= 1
            }
        } else if stations[0].station_line == "mrt" {
            if stations[0].station_linecolor == "blue" {
                mCount -= 1
            } else if stations[0].station_linecolor == "purple" {
                mpCount -= 1
            } else if stations[0].station_linecolor == "yellow" {
                ylCount -= 1
            } else { // pink
                pkCount -= 1
            }
        } else if stations[0].station_line == "srt" { // darkred and lightred
            if stations[0].station_linecolor == "darkred" {
                drCount += 1
            } else { // lightred
                lrCount += 1
            }
        } else if stations[0].station_line == "arl" {
            aCount -= 1
        }
        
        // remove station when line change
        let changes = countLineChanges(route: station_id, stationLineColors: stationLineColors).1
        for (index, change) in changes.enumerated() {
            if change == "lightgreen" || change == "darkgreen" {
                if index+1 <= changes.count-1 {
                    if changes[index+1] == "lightgreen" || changes[index+1] == "darkgreen" {
                        continue
                    }
                }
                bCount -= 1
            } else if change == "gold" {
                gCount -= 1
            } else if change == "blue" {
                mCount -= 1
            } else if change == "purple" {
                mpCount -= 1
            } else if change == "red" {
                aCount -= 1
            } else if change == "yellow" {
                ylCount -= 1
            } else if change == "pink" {
                pkCount -= 1
            } else if change == "darkred" {
                drCount -= 1
            } else { // lightred
                lrCount -= 1
            }
        }
//        print(changes)
//        print(bCount,mCount,mpCount,aCount,gCount,ylCount,pkCount,drCount,lrCount)
        
        // bts fee
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

        // mrt blue fee
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

        // mrt purple fee
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

        // arl fee
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

        // gold fee
        if gCount > 0 { fees += 16 }
        
        // yellow fee
        if ylCount == 1 {
            fees += 18
        } else if ylCount == 2 {
            fees += 22
        } else if ylCount == 3 {
            fees += 24
        } else if ylCount == 4 {
            fees += 27
        } else if ylCount == 5 {
            fees += 30
        } else if ylCount == 6 {
            fees += 33
        } else if ylCount == 7 {
            fees += 38
        } else if ylCount == 8 {
            fees += 42
        } else if ylCount >= 9 {
            fees += 45
        }
        
        // pink fee
        if pkCount == 1 {
            fees += 17
        } else if pkCount == 2 {
            fees += 21
        } else if pkCount == 3 {
            fees += 23
        } else if pkCount == 4 {
            fees += 26
        } else if pkCount == 5 {
            fees += 28
        } else if pkCount == 6 {
            fees += 30
        } else if pkCount == 7 {
            fees += 36
        } else if pkCount == 8 {
            fees += 39
        } else if pkCount == 9 {
            fees += 41
        } else if pkCount == 10 {
            fees += 44
        } else if pkCount >= 11 {
            fees += 45
        }
        
        // srt fee
        let srtCount = drCount + lrCount
        if srtCount == 1 {
            fees += 14
        } else if srtCount == 2 {
            fees += 16
        } else if srtCount == 3 {
            fees += 19
        } else if srtCount == 4 {
            fees += 23
        } else if srtCount == 5 {
            fees += 26
        } else if srtCount == 6 {
            fees += 29
        } else if srtCount == 7 {
            fees += 33
        } else if srtCount == 8 {
            fees += 39
        } else if srtCount >= 9 {
            fees += 42
        }

        allFees.append(fees)
        
        //time
        var totalTime: TimeInterval = 0
        
        // each bts station take est 2 mins
        totalTime += Double(bCount * (2 * 60))
        
        // each mrt blue station take est 2 mins
        totalTime += Double(mCount * (2 * 60))
        
        // each mrt purple station take est 3 mins
        totalTime += Double(mpCount * (3 * 60))
        
        // each arl station take est 3 mins 40 secs
        totalTime += Double(aCount * (3 * 60 + 40))
        
        // each gold station take est 4 mins
        totalTime += Double(gCount * (4 * 60))
        
        // each yellow station take est 2 mins
        totalTime += Double(ylCount * (2 * 60))
        
        // each pink station take est 2 mins
        totalTime += Double(pkCount * (2 * 60))
        
        // each darkred station take est 2 mins 50 secs
        totalTime += Double(drCount * (2 * 60 + 50))
        
        // each lightred station take est 5 mins 20 secs
        totalTime += Double(lrCount * (5 * 60 + 20))
        
        allTotalTime.append(totalTime.toTimeSpan().toDateString())
        
    }
    
    var allRoutes: [Route] = []
        
    for (index, element) in stationsAllData.enumerated() {
        allRoutes.append(Route(stations: element, fee: allFees[index], time: allTotalTime[index]))
    }
    
    return allRoutes
}

/*
func getAllPossibleRoutes4(start: String, end: String) -> [Route] {
    
    var adjacencyList: [String: [String]] = [:]

    for route in routes {
        let station1 = route[0]
        let station2 = route[1]
        
        if var adjacentStations = adjacencyList[station1] {
            adjacentStations.append(station2)
            adjacencyList[station1] = adjacentStations
        } else {
            adjacencyList[station1] = [station2]
        }
        
        if var adjacentStations = adjacencyList[station2] {
            adjacentStations.append(station1)
            adjacencyList[station2] = adjacentStations
        } else {
            adjacencyList[station2] = [station1]
        }
    }
    
    func countLineChanges(route: [String], stationLineColors: [String: String]) -> (Int, [String]) {
        var lineChanges = 0
        var nextLineColors: [String] = []
        
        guard route.count >= 2 else {
            return (lineChanges, nextLineColors)
        }
        
        for i in 0..<route.count - 1 {
            let currentStation = route[i]
            let nextStation = route[i + 1]
            
            if let currentLineColor = stationLineColors[currentStation], let nextLineColor = stationLineColors[nextStation] {
                if currentLineColor != nextLineColor {
                    lineChanges += 1
                    nextLineColors.append(nextLineColor)
                }
            }
        }
        
        return (lineChanges, nextLineColors)
    }
    
    
    // ------- replace this part ------
    func findAllRoutesWithLineChanges(start: String, end: String, adjacencyList: [String: [String]], stationLineColors: [String: String], maxRoutes: Int) -> [[String]] {
        var minLineChanges: Int?
        var result: [[String]] = []

        var queue: [(path: [String], lineChanges: Int, visited: Set<String>)] = [([start], 0, [start])]

        while !queue.isEmpty {
            let (path, lineChanges, visited) = queue.removeFirst()
            let currentNode = path.last!

            if currentNode == end {
                if minLineChanges == nil || lineChanges <= minLineChanges! {
                    if lineChanges < minLineChanges ?? Int.max {
                        // Clear previous results if the current line change is less
                        result = []
                    }
                    minLineChanges = lineChanges
                    result.append(path)
                }
                continue
            }

            let neighbors = adjacencyList[currentNode] ?? []

            for neighbor in neighbors {
                let lineColor = stationLineColors[neighbor] ?? "Unknown"
                let currentLineColor = stationLineColors[currentNode] ?? "Unknown"
                var changes = lineChanges

                if lineColor != currentLineColor {
                    changes += 1
                }

                if !visited.contains(neighbor) {
                    var newPath = path
                    newPath.append(neighbor)
                    var newVisited = visited
                    newVisited.insert(neighbor)
                    queue.append((newPath, changes, newVisited))
                }
            }
        }

        return result.prefix(maxRoutes).map { $0 }
    }
    // ------- replace this part ------
    
    let result = findAllRoutesWithLineChanges(start: start, end: end, adjacencyList: adjacencyList, stationLineColors: stationLineColors, maxRoutes: 3)
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
                                                  is_extended: stationInfo.is_extended,
                                                  start_time_1: stationInfo.start_time_1,
                                                  start_time_2: stationInfo.start_time_2,
                                                  last_time_1: stationInfo.last_time_1,
                                                  last_time_2: stationInfo.last_time_2)
                        
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
    var allTotalTime: [String] = []

    for stations in stationsAllData {
        var fees = 0
        var bCount = 0
        var mCount = 0
        var mpCount = 0
        var aCount = 0
        var extended = false

        var gCount = 0
        var ylCount = 0
        var pkCount = 0
        var drCount = 0
        var lrCount = 0
        
        var station_id: [String] = []

        // count no of stations
        for station in stations {
            if station.station_line == "bts" {
                if station.station_linecolor == "gold" {
                    gCount += 1
                } else { // lightgreen and darkgreen
                    bCount += 1
                    if station.is_extended {
                        extended = true
                    }
                }
            } else if station.station_line == "mrt" {
                if station.station_linecolor == "blue" {
                    mCount += 1
                } else if station.station_linecolor == "purple" {
                    mpCount += 1
                } else if station.station_linecolor == "yellow" {
                    ylCount += 1
                } else { // pink
                    pkCount += 1
                }
            } else if station.station_line == "srt" {
                if station.station_linecolor == "darkred" {
                    drCount += 1
                } else { // lightred
                    lrCount += 1
                }
            } else if station.station_line == "arl" {
                aCount += 1
            }
            station_id.append(station.station_id)
        }
        
        // remove the first station count
        if stations[0].station_line == "bts" {
            if stations[0].station_linecolor == "gold" {
                gCount -= 1
            } else { // lightgreen and darkgreen
                bCount -= 1
            }
        } else if stations[0].station_line == "mrt" {
            if stations[0].station_linecolor == "blue" {
                mCount -= 1
            } else if stations[0].station_linecolor == "purple" {
                mpCount -= 1
            } else if stations[0].station_linecolor == "yellow" {
                ylCount -= 1
            } else { // pink
                pkCount -= 1
            }
        } else if stations[0].station_line == "srt" { // darkred and lightred
            if stations[0].station_linecolor == "darkred" {
                drCount += 1
            } else { // lightred
                lrCount += 1
            }
        } else if stations[0].station_line == "arl" {
            aCount -= 1
        }
        
        // remove station when line change
        let changes = countLineChanges(route: station_id, stationLineColors: stationLineColors).1
        for (index, change) in changes.enumerated() {
            if change == "lightgreen" || change == "darkgreen" {
                if index+1 <= changes.count-1 {
                    if changes[index+1] == "lightgreen" || changes[index+1] == "darkgreen" {
                        continue
                    }
                }
                bCount -= 1
            } else if change == "gold" {
                gCount -= 1
            } else if change == "blue" {
                mCount -= 1
            } else if change == "purple" {
                mpCount -= 1
            } else if change == "red" {
                aCount -= 1
            } else if change == "yellow" {
                ylCount -= 1
            } else if change == "pink" {
                pkCount -= 1
            } else if change == "darkred" {
                drCount -= 1
            } else { // lightred
                lrCount -= 1
            }
        }
//        print(changes)
//        print(bCount,mCount,mpCount,aCount,gCount,ylCount,pkCount,drCount,lrCount)
        
        // bts fee
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

        // mrt blue fee
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

        // mrt purple fee
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

        // arl fee
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

        // gold fee
        if gCount > 0 { fees += 16 }
        
        // yellow fee
        if ylCount == 1 {
            fees += 18
        } else if ylCount == 2 {
            fees += 22
        } else if ylCount == 3 {
            fees += 24
        } else if ylCount == 4 {
            fees += 27
        } else if ylCount == 5 {
            fees += 30
        } else if ylCount == 6 {
            fees += 33
        } else if ylCount == 7 {
            fees += 38
        } else if ylCount == 8 {
            fees += 42
        } else if ylCount >= 9 {
            fees += 45
        }
        
        // pink fee
        if pkCount == 1 {
            fees += 17
        } else if pkCount == 2 {
            fees += 21
        } else if pkCount == 3 {
            fees += 23
        } else if pkCount == 4 {
            fees += 26
        } else if pkCount == 5 {
            fees += 28
        } else if pkCount == 6 {
            fees += 30
        } else if pkCount == 7 {
            fees += 36
        } else if pkCount == 8 {
            fees += 39
        } else if pkCount == 9 {
            fees += 41
        } else if pkCount == 10 {
            fees += 44
        } else if pkCount >= 11 {
            fees += 45
        }
        
        // srt fee
        let srtCount = drCount + lrCount
        if srtCount == 1 {
            fees += 14
        } else if srtCount == 2 {
            fees += 16
        } else if srtCount == 3 {
            fees += 19
        } else if srtCount == 4 {
            fees += 23
        } else if srtCount == 5 {
            fees += 26
        } else if srtCount == 6 {
            fees += 29
        } else if srtCount == 7 {
            fees += 33
        } else if srtCount == 8 {
            fees += 39
        } else if srtCount >= 9 {
            fees += 42
        }

        allFees.append(fees)
        
        //time
        var totalTime: TimeInterval = 0
        
        // each bts station take est 2 mins
        totalTime += Double(bCount * (2 * 60))
        
        // each mrt blue station take est 2 mins
        totalTime += Double(mCount * (2 * 60))
        
        // each mrt purple station take est 3 mins
        totalTime += Double(mpCount * (3 * 60))
        
        // each arl station take est 3 mins 40 secs
        totalTime += Double(aCount * (3 * 60 + 40))
        
        // each gold station take est 4 mins
        totalTime += Double(gCount * (4 * 60))
        
        // each yellow station take est 2 mins
        totalTime += Double(ylCount * (2 * 60))
        
        // each pink station take est 2 mins
        totalTime += Double(pkCount * (2 * 60))
        
        // each darkred station take est 2 mins 50 secs
        totalTime += Double(drCount * (2 * 60 + 50))
        
        // each lightred station take est 5 mins 20 secs
        totalTime += Double(lrCount * (5 * 60 + 20))
        
        allTotalTime.append(totalTime.toTimeSpan().toDateString())
        
    }
    
    var allRoutes: [Route] = []
        
    for (index, element) in stationsAllData.enumerated() {
        allRoutes.append(Route(stations: element, fee: allFees[index], time: allTotalTime[index]))
    }
    
    return allRoutes
}
*/
