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

let testresult = getAllPossibleRoutes2(start: "N8", end: "N7")
for route in testresult {
    for station in route.stations {
        print(station.station_id, station.station_name)
    }
    print("No. of stations:",route.stations.count)
    print("Fees:", route.fee)
    print("----------")
}

//let testresult2 = getAllPossibleRoutes(start: "N8", end: "N7")


// ---------------------------

func calculateTotalTime() -> [TimeSpan] {
    // Use TimeInterval directly for time of day
    var totalTime: TimeInterval = 0
    var allTotalTime = [TimeSpan]()
    
    let bCount = 5
    
    let dateFormatter = DateFormatter()
    dateFormatter.timeZone = TimeZone(identifier: "Asia/Bangkok")
    dateFormatter.dateFormat = "yyyy-MM-dd HH:mm:ss"
    var currentTimeInterval = Date().timeIntervalSince(dateFormatter.date(from: "2024-03-12 00:00:00")!)
    // + delay 18 mins (not sure why)
    currentTimeInterval += 18 * 60
    currentTimeInterval = currentTimeInterval.truncatingRemainder(dividingBy: 86400)
//    print(currentTimeInterval)
    
    for key in timetable.keys.sorted() {
        if key.toTimeInterval() < currentTimeInterval {
            totalTime = 0
            for _ in 0..<bCount {
                totalTime += timetable[key]!.toTimeInterval()
            }
            print(key, currentTimeInterval)
        }
    }
    
    allTotalTime.append(totalTime.toTimeSpan())

    return allTotalTime
}

//func convertToMinutesAndSeconds(timeInterval: TimeInterval) -> (Int, Int, Int) {
//    let totalSeconds = Int(timeInterval)
//    let hours = totalSeconds / 3600
//    let minutes = (totalSeconds % 3600) / 60
//    let seconds = totalSeconds % 60
//
//    return (hours, minutes, seconds)
//}

// Example usage
//let exampleTimeInterval = calculateTotalTime().first!
//print("timespan array", calculateTotalTime())
//let (hours, minutes, seconds) = convertToMinutesAndSeconds(timeInterval: exampleTimeInterval)
//print("Hours: \(hours), Minutes: \(minutes), Seconds: \(seconds)")

// ------------------

//func toTimeSpan(timeInterval: TimeInterval) -> TimeSpan {
//    let time = Int(timeInterval)
//    return TimeSpan(hours: time/3600, minutes: (time%3600)/60, seconds: time%60)
//    
//}

func getAllArrivingTime() -> [TimeSpan] {
    var interval: TimeInterval = 0
    var btsLightTime: TimeInterval = 0
    
    let dateFormatter = DateFormatter()
    dateFormatter.timeZone = TimeZone(identifier: "Asia/Bangkok")
    dateFormatter.dateFormat = "yyyy-MM-dd HH:mm:ss"
    var currentTimeInterval = Date().timeIntervalSince(dateFormatter.date(from: "2024-03-12 00:00:00")!)
    // + delay 18 mins (not sure why)
    currentTimeInterval += 18 * 60
    currentTimeInterval = currentTimeInterval.truncatingRemainder(dividingBy: 86400)
//    print(currentTimeInterval)
    
    for key in timetable.keys.sorted() {
        if key.toTimeInterval() < currentTimeInterval {
            interval = timetable[key]!.toTimeInterval()
            var temp: TimeInterval = key.toTimeInterval()
            while temp < currentTimeInterval {
                temp += interval
//                print("temp", temp, "interval", interval)
            }
            btsLightTime = temp - currentTimeInterval
//            print("key", key,"now", currentTimeInterval)
        }
    }
    let result = btsLightTime.toTimeSpan()
    return [result]
}

//print(getAllArrivingTime())


