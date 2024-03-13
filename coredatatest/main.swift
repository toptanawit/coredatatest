//
//  main.swift
//  coredatatest
//
//  Created by Tanawit Poumloyfha on 9/3/2567 BE.
//

import Foundation
import CoreData


// use after made changes to data
//saveContext()


// ------------------------------


//let testresult = getAllPossibleRoutes(start: "N8", end: "E17")
// testresult [([(N8 data),(N7 data),...],fee),([(N8 data),(N7 data),...],fee),([(N8 data),(N7 data),...],fee),...]

let testresult = getAllPossibleRoutes(start: "N8", end: "N7")
for route in testresult {
    for station in route.stations {
        print(station.station_id, station.station_name)
    }
    print("No. of stations:",route.stations.count)
    print("Fees:", route.fee)
    print("----------")
}




func calculateTotalTime() -> [TimeInterval] {
    // Use TimeInterval directly for time of day
    var totalTime: TimeInterval = 0
    var allTotalTime = [TimeInterval]()
    
    
    // maybe add after midnight case for it to work even no service
    let timetable: [TimeInterval: TimeInterval] = [
        6 * 60 * 60: 5 * 60,
        7 * 60 * 60: 2 * 60 + 40,
        9 * 60 * 60: 3 * 60 + 35,
        9.5 * 60 * 60: 6 * 60 + 30,
        16 * 60 * 60: 4 * 60 + 25,
        16.5 * 60 * 60: 2 * 60 + 40,
        17 * 60 * 60: 2 * 60 + 40,
        20 * 60 * 60: 4 * 60 + 25,
        21 * 60 * 60: 6 * 60,
        22 * 60 * 60: 8 * 60
    ]
    
    let bCount = 5
    
    let dateFormatter = DateFormatter()
    dateFormatter.timeZone = TimeZone(identifier: "Asia/Bangkok")
    dateFormatter.dateFormat = "yyyy-MM-dd HH:mm:ss"
    var currentTimeInterval = Date().timeIntervalSince(dateFormatter.date(from: "2024-03-12 00:00:00")!)
    // + delay 18 mins (not sure why)
    currentTimeInterval += 18 * 60
    currentTimeInterval = currentTimeInterval.truncatingRemainder(dividingBy: 86400)
    print(currentTimeInterval)
    
    for key in timetable.keys.sorted() {
        if key < currentTimeInterval {
            totalTime = 0
            for _ in 0..<bCount {
                totalTime += timetable[key]!
            }
            print(key, currentTimeInterval)
        }
    }
    
    let (hours, minutes, seconds) = convertToMinutesAndSeconds(timeInterval: currentTimeInterval)
    print("Hours: \(hours), Minutes: \(minutes), Seconds: \(seconds)")
    
    allTotalTime.append(totalTime)

    return allTotalTime
}

func convertToMinutesAndSeconds(timeInterval: TimeInterval) -> (Int, Int, Int) {
    let totalSeconds = Int(timeInterval)
    let hours = totalSeconds / 3600
    let minutes = (totalSeconds % 3600) / 60
    let seconds = totalSeconds % 60

    return (hours, minutes, seconds)
}

// Example usage
let exampleTimeInterval: TimeInterval = calculateTotalTime().first!
let (hours, minutes, seconds) = convertToMinutesAndSeconds(timeInterval: exampleTimeInterval)

print("Hours: \(hours), Minutes: \(minutes), Seconds: \(seconds)")
