//
//  ArriveTimeController.swift
//  coredatatest
//
//  Created by Tanawit Poumloyfha on 19/3/2567 BE.
//

import Foundation

func getAllArrivingTime() -> [String: String] {
    var interval: TimeInterval = 0
    // weekday time
    var btsLightTime: TimeInterval = 0
    var btsLightExTime: TimeInterval = 0
    var btsDarkTime: TimeInterval = 0
    var mrtBlueTime: TimeInterval = 0
    var mrtPurpleTime: TimeInterval = 0
    var arlTime: TimeInterval = 0
    // weekend time
    var btsLightEndTime: TimeInterval = 0
    var btsLightExEndTime: TimeInterval = 0
    var btsDarkEndTime: TimeInterval = 0
    var mrtPurpleEndTime: TimeInterval = 0
    var arlEndTime: TimeInterval = 0
    
    let dateFormatter = DateFormatter()
    dateFormatter.timeZone = TimeZone(identifier: "Asia/Bangkok")
    dateFormatter.dateFormat = "yyyy-MM-dd HH:mm:ss"
    var currentTimeInterval = Date().timeIntervalSince(dateFormatter.date(from: "2024-03-12 00:00:00")!)
    // + delay 18 mins (not sure why)
    currentTimeInterval += 18 * 60
    currentTimeInterval = currentTimeInterval.truncatingRemainder(dividingBy: 86400)
//    print(currentTimeInterval)
    
    // weekday
    for key in timetable.keys.sorted() {
        if key.toTimeInterval() < currentTimeInterval && currentTimeInterval < TimeSpan(hours: 6, minutes: 0, seconds: 0).toTimeInterval() {
            btsLightTime = TimeSpan(hours: 6, minutes: 0, seconds: 0).toTimeInterval() - currentTimeInterval
            break
        }
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
    
    for key in extendedTimetable.keys.sorted() {
        if key.toTimeInterval() < currentTimeInterval && currentTimeInterval < TimeSpan(hours: 6, minutes: 0, seconds: 0).toTimeInterval() {
            btsLightExTime = TimeSpan(hours: 6, minutes: 0, seconds: 0).toTimeInterval() - currentTimeInterval
            break
        }
        if key.toTimeInterval() < currentTimeInterval {
            interval = extendedTimetable[key]!.toTimeInterval()
            var temp: TimeInterval = key.toTimeInterval()
            while temp < currentTimeInterval {
                temp += interval
            }
            btsLightExTime = temp - currentTimeInterval
        }
    }
    
    for key in darkgreenTimetable.keys.sorted() {
        if key.toTimeInterval() < currentTimeInterval && currentTimeInterval < TimeSpan(hours: 6, minutes: 0, seconds: 0).toTimeInterval() {
            btsDarkTime = TimeSpan(hours: 6, minutes: 0, seconds: 0).toTimeInterval() - currentTimeInterval
            break
        }
        if key.toTimeInterval() < currentTimeInterval {
            interval = darkgreenTimetable[key]!.toTimeInterval()
            var temp: TimeInterval = key.toTimeInterval()
            while temp < currentTimeInterval {
                temp += interval
            }
            btsDarkTime = temp - currentTimeInterval
        }
    }
    
    for key in blueTimetable.keys.sorted() {
        if key.toTimeInterval() < currentTimeInterval && currentTimeInterval < TimeSpan(hours: 6, minutes: 0, seconds: 0).toTimeInterval() {
            mrtBlueTime = TimeSpan(hours: 6, minutes: 0, seconds: 0).toTimeInterval() - currentTimeInterval
            break
        }
        if key.toTimeInterval() < currentTimeInterval {
            interval = blueTimetable[key]!.toTimeInterval()
            var temp: TimeInterval = key.toTimeInterval()
            while temp < currentTimeInterval {
                temp += interval
            }
            mrtBlueTime = temp - currentTimeInterval
        }
    }
    
    for key in purpleTimetable.keys.sorted() {
        if key.toTimeInterval() < currentTimeInterval && currentTimeInterval < TimeSpan(hours: 5, minutes: 30, seconds: 0).toTimeInterval() {
            mrtPurpleTime = TimeSpan(hours: 5, minutes: 30, seconds: 0).toTimeInterval() - currentTimeInterval
            break
        }
        if key.toTimeInterval() < currentTimeInterval {
            interval = purpleTimetable[key]!.toTimeInterval()
            var temp: TimeInterval = key.toTimeInterval()
            while temp < currentTimeInterval {
                temp += interval
            }
            mrtPurpleTime = temp - currentTimeInterval
        }
    }
    
    for key in arlTimetable.sorted() {
        if key.toTimeInterval() > currentTimeInterval {
            arlTime = key.toTimeInterval() - currentTimeInterval
            break
        }
    }
    
    // weekend
    for key in holidayTimetable.keys.sorted() {
        if key.toTimeInterval() < currentTimeInterval && currentTimeInterval < TimeSpan(hours: 6, minutes: 0, seconds: 0).toTimeInterval() {
            btsLightEndTime = TimeSpan(hours: 6, minutes: 0, seconds: 0).toTimeInterval() - currentTimeInterval
            break
        }
        if key.toTimeInterval() < currentTimeInterval {
            interval = holidayTimetable[key]!.toTimeInterval()
            var temp: TimeInterval = key.toTimeInterval()
            while temp < currentTimeInterval {
                temp += interval
            }
            btsLightEndTime = temp - currentTimeInterval
        }
    }
    
    for key in holidayExtendedTimetable.keys.sorted() {
        if key.toTimeInterval() < currentTimeInterval && currentTimeInterval < TimeSpan(hours: 6, minutes: 0, seconds: 0).toTimeInterval() {
            btsLightExEndTime = TimeSpan(hours: 6, minutes: 0, seconds: 0).toTimeInterval() - currentTimeInterval
            break
        }
        if key.toTimeInterval() < currentTimeInterval {
            interval = holidayExtendedTimetable[key]!.toTimeInterval()
            var temp: TimeInterval = key.toTimeInterval()
            while temp < currentTimeInterval {
                temp += interval
            }
            btsLightExEndTime = temp - currentTimeInterval
        }
    }
    
    for key in holidayDarkgreenTimetable.keys.sorted() {
        if key.toTimeInterval() < currentTimeInterval && currentTimeInterval < TimeSpan(hours: 6, minutes: 0, seconds: 0).toTimeInterval() {
            btsDarkEndTime = TimeSpan(hours: 6, minutes: 0, seconds: 0).toTimeInterval() - currentTimeInterval
            break
        }
        if key.toTimeInterval() < currentTimeInterval {
            interval = holidayDarkgreenTimetable[key]!.toTimeInterval()
            var temp: TimeInterval = key.toTimeInterval()
            while temp < currentTimeInterval {
                temp += interval
            }
            btsDarkEndTime = temp - currentTimeInterval
        }
    }
    
    for key in holidayPurpleTimetable.keys.sorted() {
        if key.toTimeInterval() < currentTimeInterval && currentTimeInterval < TimeSpan(hours: 6, minutes: 0, seconds: 0).toTimeInterval() {
            mrtPurpleEndTime = TimeSpan(hours: 6, minutes: 0, seconds: 0).toTimeInterval() - currentTimeInterval
            break
        }
        if key.toTimeInterval() < currentTimeInterval {
            interval = holidayPurpleTimetable[key]!.toTimeInterval()
            var temp: TimeInterval = key.toTimeInterval()
            while temp < currentTimeInterval {
                temp += interval
            }
            mrtPurpleEndTime = temp - currentTimeInterval
        }
    }
    
    for key in arlHolidayTimetable.sorted() {
        if key.toTimeInterval() > currentTimeInterval {
            arlEndTime = key.toTimeInterval() - currentTimeInterval
            break
        }
    }
    
    var result: [String: String] = [:]
    
    let currentDate = Date()
    let calendar = Calendar.current
    let dayOfWeek = calendar.component(.weekday, from: currentDate)
    // Check if it's a weekend (Saturday or Sunday)
    if dayOfWeek == 1 || dayOfWeek == 7 { // weekend
        result = ["btsLightTime": btsLightEndTime.toTimeSpan().toDateString(),
                  "btsLightExTime": btsLightExEndTime.toTimeSpan().toDateString(),
                  "btsDarkTime": btsDarkEndTime.toTimeSpan().toDateString(),
                  "mrtBlueTime": mrtBlueTime.toTimeSpan().toDateString(),
                  "mrtPurpleTime": mrtPurpleEndTime.toTimeSpan().toDateString(),
                  "arlTime": arlEndTime.toTimeSpan().toDateString()]
    } else { // weekday
        result = ["btsLightTime": btsLightTime.toTimeSpan().toDateString(),
                  "btsLightExTime": btsLightExTime.toTimeSpan().toDateString(),
                  "btsDarkTime": btsDarkTime.toTimeSpan().toDateString(),
                  "mrtBlueTime": mrtBlueTime.toTimeSpan().toDateString(),
                  "mrtPurpleTime": mrtPurpleTime.toTimeSpan().toDateString(),
                  "arlTime": arlTime.toTimeSpan().toDateString()]
    }
    
    return result
}
