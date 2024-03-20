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
    var goldTime: TimeInterval = 0
    var yellowTime: TimeInterval = 0
    var pinkTime: TimeInterval = 0
    var darkredTime: TimeInterval = 0
    var lightredTime : TimeInterval = 0
    // weekend time
    var btsLightEndTime: TimeInterval = 0
    var btsLightExEndTime: TimeInterval = 0
    var btsDarkEndTime: TimeInterval = 0
    var mrtPurpleEndTime: TimeInterval = 0
    var arlEndTime: TimeInterval = 0
    var goldEndTime: TimeInterval = 0
    var yellowEndTime: TimeInterval = 0
    var pinkEndTime: TimeInterval = 0
    
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
    
    for key in goldTimetable.keys.sorted() {
        if key.toTimeInterval() < currentTimeInterval && currentTimeInterval < TimeSpan(hours: 6, minutes: 0, seconds: 0).toTimeInterval() {
            goldTime = TimeSpan(hours: 6, minutes: 0, seconds: 0).toTimeInterval() - currentTimeInterval
            break
        }
        if key.toTimeInterval() < currentTimeInterval {
            interval = goldTimetable[key]!.toTimeInterval()
            var temp: TimeInterval = key.toTimeInterval()
            while temp < currentTimeInterval {
                temp += interval
            }
            goldTime = temp - currentTimeInterval
        }
    }
    
    for key in yellowTimetable.keys.sorted() {
        if key.toTimeInterval() < currentTimeInterval && currentTimeInterval < TimeSpan(hours: 6, minutes: 0, seconds: 0).toTimeInterval() {
            yellowTime = TimeSpan(hours: 6, minutes: 0, seconds: 0).toTimeInterval() - currentTimeInterval
            break
        }
        if key.toTimeInterval() < currentTimeInterval {
            interval = yellowTimetable[key]!.toTimeInterval()
            var temp: TimeInterval = key.toTimeInterval()
            while temp < currentTimeInterval {
                temp += interval
            }
            yellowTime = temp - currentTimeInterval
        }
    }
    
    for key in pinkTimetable.keys.sorted() {
        if key.toTimeInterval() < currentTimeInterval && currentTimeInterval < TimeSpan(hours: 6, minutes: 0, seconds: 0).toTimeInterval() {
            pinkTime = TimeSpan(hours: 6, minutes: 0, seconds: 0).toTimeInterval() - currentTimeInterval
            break
        }
        if key.toTimeInterval() < currentTimeInterval {
            interval = pinkTimetable[key]!.toTimeInterval()
            var temp: TimeInterval = key.toTimeInterval()
            while temp < currentTimeInterval {
                temp += interval
            }
            pinkTime = temp - currentTimeInterval
        }
    }
    
    for key in darkredTimetable.sorted() {
        if key.toTimeInterval() > currentTimeInterval {
            darkredTime = key.toTimeInterval() - currentTimeInterval
            break
        }
    }
    
    for key in lightredTimetable.sorted() {
        if key.toTimeInterval() > currentTimeInterval {
            lightredTime = key.toTimeInterval() - currentTimeInterval
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
    
    for key in goldHolidayTimetable.keys.sorted() {
        if key.toTimeInterval() < currentTimeInterval && currentTimeInterval < TimeSpan(hours: 6, minutes: 0, seconds: 0).toTimeInterval() {
            goldEndTime = TimeSpan(hours: 6, minutes: 0, seconds: 0).toTimeInterval() - currentTimeInterval
            break
        }
        if key.toTimeInterval() < currentTimeInterval {
            interval = goldHolidayTimetable[key]!.toTimeInterval()
            var temp: TimeInterval = key.toTimeInterval()
            while temp < currentTimeInterval {
                temp += interval
            }
            goldEndTime = temp - currentTimeInterval
        }
    }
    
    for key in yellowHolidayTimetable.keys.sorted() {
        if key.toTimeInterval() < currentTimeInterval && currentTimeInterval < TimeSpan(hours: 6, minutes: 0, seconds: 0).toTimeInterval() {
            yellowEndTime = TimeSpan(hours: 6, minutes: 0, seconds: 0).toTimeInterval() - currentTimeInterval
            break
        }
        if key.toTimeInterval() < currentTimeInterval {
            interval = yellowHolidayTimetable[key]!.toTimeInterval()
            var temp: TimeInterval = key.toTimeInterval()
            while temp < currentTimeInterval {
                temp += interval
            }
            yellowEndTime = temp - currentTimeInterval
        }
    }
    
    for key in pinkHolidayTimetable.keys.sorted() {
        if key.toTimeInterval() < currentTimeInterval && currentTimeInterval < TimeSpan(hours: 6, minutes: 0, seconds: 0).toTimeInterval() {
            pinkEndTime = TimeSpan(hours: 6, minutes: 0, seconds: 0).toTimeInterval() - currentTimeInterval
            break
        }
        if key.toTimeInterval() < currentTimeInterval {
            interval = pinkHolidayTimetable[key]!.toTimeInterval()
            var temp: TimeInterval = key.toTimeInterval()
            while temp < currentTimeInterval {
                temp += interval
            }
            pinkEndTime = temp - currentTimeInterval
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
                  "arlTime": arlEndTime.toTimeSpan().toDateString(),
                  "goldTime": goldEndTime.toTimeSpan().toDateString(),
                  "yellowTime": yellowEndTime.toTimeSpan().toDateString(),
                  "pinkTime": pinkEndTime.toTimeSpan().toDateString(),
                  "darkRedTime": darkredTime.toTimeSpan().toDateString(),
                  "lightRedTime": lightredTime.toTimeSpan().toDateString()]
    } else { // weekday
        result = ["btsLightTime": btsLightTime.toTimeSpan().toDateString(),
                  "btsLightExTime": btsLightExTime.toTimeSpan().toDateString(),
                  "btsDarkTime": btsDarkTime.toTimeSpan().toDateString(),
                  "mrtBlueTime": mrtBlueTime.toTimeSpan().toDateString(),
                  "mrtPurpleTime": mrtPurpleTime.toTimeSpan().toDateString(),
                  "arlTime": arlTime.toTimeSpan().toDateString(),
                  "goldTime": goldTime.toTimeSpan().toDateString(),
                  "yellowTime": yellowTime.toTimeSpan().toDateString(),
                  "pinkTime": pinkTime.toTimeSpan().toDateString(),
                  "darkRedTime": darkredTime.toTimeSpan().toDateString(),
                  "lightRedTime": lightredTime.toTimeSpan().toDateString()]
    }
    
    return result
}


// get one interval time
func getIntervalTime(station: String) -> String {
    var intervalTime: TimeInterval = 0
    var line: String = ""
    var linecolor: String = ""
    var is_extended: Bool = false
    
    do {
        if let url = Bundle.main.url(forResource: "Stations", withExtension: "json") {
            let data = try Data(contentsOf: url)
            let decodedData = try JSONDecoder().decode([Station].self, from: data)
            let filteredData = decodedData.filter { $0.station_id == station }

            line = filteredData.first!.station_line
            linecolor = filteredData.first!.station_linecolor
            is_extended = filteredData.first!.is_extended
        }
    } catch {
        print("Error reading or decoding JSON data: \(error)")
    }
    
    let dateFormatter = DateFormatter()
    dateFormatter.timeZone = TimeZone(identifier: "Asia/Bangkok")
    dateFormatter.dateFormat = "yyyy-MM-dd HH:mm:ss"
    var currentTimeInterval = Date().timeIntervalSince(dateFormatter.date(from: "2024-03-12 00:00:00")!)
    // + delay 18 mins (not sure why)
    currentTimeInterval += 18 * 60
    currentTimeInterval = currentTimeInterval.truncatingRemainder(dividingBy: 86400)
    
    let currentDate = Date()
    let calendar = Calendar.current
    let dayOfWeek = calendar.component(.weekday, from: currentDate)
    // Check if it's a weekend (Saturday or Sunday)
    if dayOfWeek == 1 || dayOfWeek == 7 { // weekend
        if line == "bts" {
            if linecolor == "lightgreen" && is_extended {
                for key in holidayExtendedTimetable.keys.sorted() {
                    if key.toTimeInterval() < currentTimeInterval && currentTimeInterval < TimeSpan(hours: 6, minutes: 0, seconds: 0).toTimeInterval() {
                        intervalTime = TimeSpan(hours: 0, minutes: 0, seconds: 0).toTimeInterval()
                        break
                    }
                    if key.toTimeInterval() < currentTimeInterval {
                        intervalTime = holidayExtendedTimetable[key]!.toTimeInterval()
                    }
                }
            } else if linecolor == "lightgreen" {
                for key in holidayTimetable.keys.sorted() {
                    if key.toTimeInterval() < currentTimeInterval && currentTimeInterval < TimeSpan(hours: 6, minutes: 0, seconds: 0).toTimeInterval() {
                        intervalTime = TimeSpan(hours: 0, minutes: 0, seconds: 0).toTimeInterval()
                        break
                    }
                    if key.toTimeInterval() < currentTimeInterval {
                        intervalTime = holidayTimetable[key]!.toTimeInterval()
                    }
                }
            } else if linecolor == "darkgreen" {
                for key in holidayDarkgreenTimetable.keys.sorted() {
                    if key.toTimeInterval() < currentTimeInterval && currentTimeInterval < TimeSpan(hours: 6, minutes: 0, seconds: 0).toTimeInterval() {
                        intervalTime = TimeSpan(hours: 0, minutes: 0, seconds: 0).toTimeInterval()
                        break
                    }
                    if key.toTimeInterval() < currentTimeInterval {
                        intervalTime = holidayDarkgreenTimetable[key]!.toTimeInterval()
                    }
                }
            } else { // gold
                for key in goldHolidayTimetable.keys.sorted() {
                    if key.toTimeInterval() < currentTimeInterval && currentTimeInterval < TimeSpan(hours: 6, minutes: 0, seconds: 0).toTimeInterval() {
                        intervalTime = TimeSpan(hours: 0, minutes: 0, seconds: 0).toTimeInterval()
                        break
                    }
                    if key.toTimeInterval() < currentTimeInterval {
                        intervalTime = goldHolidayTimetable[key]!.toTimeInterval()
                    }
                }
            }
        } else if line == "mrt" {
            if linecolor == "blue" { // same as weekday
                for key in blueTimetable.keys.sorted() {
                    if key.toTimeInterval() < currentTimeInterval && currentTimeInterval < TimeSpan(hours: 6, minutes: 0, seconds: 0).toTimeInterval() {
                        intervalTime = TimeSpan(hours: 0, minutes: 0, seconds: 0).toTimeInterval()
                        break
                    }
                    if key.toTimeInterval() < currentTimeInterval {
                        intervalTime = blueTimetable[key]!.toTimeInterval()
                    }
                }
            } else if linecolor == "purple" {
                for key in holidayPurpleTimetable.keys.sorted() {
                    if key.toTimeInterval() < currentTimeInterval && currentTimeInterval < TimeSpan(hours: 5, minutes: 30, seconds: 0).toTimeInterval() {
                        intervalTime = TimeSpan(hours: 0, minutes: 0, seconds: 0).toTimeInterval()
                        break
                    }
                    if key.toTimeInterval() < currentTimeInterval {
                        intervalTime = holidayPurpleTimetable[key]!.toTimeInterval()
                    }
                }
            } else if linecolor == "yellow" {
                for key in yellowHolidayTimetable.keys.sorted() {
                    if key.toTimeInterval() < currentTimeInterval && currentTimeInterval < TimeSpan(hours: 6, minutes: 0, seconds: 0).toTimeInterval() {
                        intervalTime = TimeSpan(hours: 0, minutes: 0, seconds: 0).toTimeInterval()
                        break
                    }
                    if key.toTimeInterval() < currentTimeInterval {
                        intervalTime = yellowHolidayTimetable[key]!.toTimeInterval()
                    }
                }
            } else { // pink
                for key in pinkHolidayTimetable.keys.sorted() {
                    if key.toTimeInterval() < currentTimeInterval && currentTimeInterval < TimeSpan(hours: 6, minutes: 0, seconds: 0).toTimeInterval() {
                        intervalTime = TimeSpan(hours: 0, minutes: 0, seconds: 0).toTimeInterval()
                        break
                    }
                    if key.toTimeInterval() < currentTimeInterval {
                        intervalTime = pinkHolidayTimetable[key]!.toTimeInterval()
                    }
                }
            }
        } else if line == "arl" { // est 15 mins between trains
            intervalTime = TimeSpan(hours: 0, minutes: 15, seconds: 0).toTimeInterval()
        } else { // srt
            if linecolor == "darkred" {
                intervalTime = TimeSpan(hours: 0, minutes: 15, seconds: 0).toTimeInterval()
            } else { // lightred
                intervalTime = TimeSpan(hours: 0, minutes: 20, seconds: 0).toTimeInterval()
            }
        }
    } else { // weekday
        if line == "bts" {
            if linecolor == "lightgreen" && is_extended {
                for key in extendedTimetable.keys.sorted() {
                    if key.toTimeInterval() < currentTimeInterval && currentTimeInterval < TimeSpan(hours: 6, minutes: 0, seconds: 0).toTimeInterval() {
                        intervalTime = TimeSpan(hours: 0, minutes: 0, seconds: 0).toTimeInterval()
                        break
                    }
                    if key.toTimeInterval() < currentTimeInterval {
                        intervalTime = extendedTimetable[key]!.toTimeInterval()
                    }
                }
            } else if linecolor == "lightgreen" {
                for key in timetable.keys.sorted() {
                    if key.toTimeInterval() < currentTimeInterval && currentTimeInterval < TimeSpan(hours: 6, minutes: 0, seconds: 0).toTimeInterval() {
                        intervalTime = TimeSpan(hours: 0, minutes: 0, seconds: 0).toTimeInterval()
                        break
                    }
                    if key.toTimeInterval() < currentTimeInterval {
                        intervalTime = timetable[key]!.toTimeInterval()
                    }
                }
            } else if linecolor == "darkgreen" {
                for key in darkgreenTimetable.keys.sorted() {
                    if key.toTimeInterval() < currentTimeInterval && currentTimeInterval < TimeSpan(hours: 6, minutes: 0, seconds: 0).toTimeInterval() {
                        intervalTime = TimeSpan(hours: 0, minutes: 0, seconds: 0).toTimeInterval()
                        break
                    }
                    if key.toTimeInterval() < currentTimeInterval {
                        intervalTime = darkgreenTimetable[key]!.toTimeInterval()
                    }
                }
            } else { // gold
                for key in goldTimetable.keys.sorted() {
                    if key.toTimeInterval() < currentTimeInterval && currentTimeInterval < TimeSpan(hours: 6, minutes: 0, seconds: 0).toTimeInterval() {
                        intervalTime = TimeSpan(hours: 0, minutes: 0, seconds: 0).toTimeInterval()
                        break
                    }
                    if key.toTimeInterval() < currentTimeInterval {
                        intervalTime = goldTimetable[key]!.toTimeInterval()
                    }
                }
            }
        } else if line == "mrt" {
            if linecolor == "blue" { // same as weekday
                for key in blueTimetable.keys.sorted() {
                    if key.toTimeInterval() < currentTimeInterval && currentTimeInterval < TimeSpan(hours: 6, minutes: 0, seconds: 0).toTimeInterval() {
                        intervalTime = TimeSpan(hours: 0, minutes: 0, seconds: 0).toTimeInterval()
                        break
                    }
                    if key.toTimeInterval() < currentTimeInterval {
                        intervalTime = blueTimetable[key]!.toTimeInterval()
                    }
                }
            } else if linecolor == "purple" {
                for key in purpleTimetable.keys.sorted() {
                    if key.toTimeInterval() < currentTimeInterval && currentTimeInterval < TimeSpan(hours: 5, minutes: 30, seconds: 0).toTimeInterval() {
                        intervalTime = TimeSpan(hours: 0, minutes: 0, seconds: 0).toTimeInterval()
                        break
                    }
                    if key.toTimeInterval() < currentTimeInterval {
                        intervalTime = purpleTimetable[key]!.toTimeInterval()
                    }
                }
            } else if linecolor == "yellow" {
                for key in yellowTimetable.keys.sorted() {
                    if key.toTimeInterval() < currentTimeInterval && currentTimeInterval < TimeSpan(hours: 6, minutes: 0, seconds: 0).toTimeInterval() {
                        intervalTime = TimeSpan(hours: 0, minutes: 0, seconds: 0).toTimeInterval()
                        break
                    }
                    if key.toTimeInterval() < currentTimeInterval {
                        intervalTime = yellowTimetable[key]!.toTimeInterval()
                    }
                }
            } else { // pink
                for key in pinkTimetable.keys.sorted() {
                    if key.toTimeInterval() < currentTimeInterval && currentTimeInterval < TimeSpan(hours: 6, minutes: 0, seconds: 0).toTimeInterval() {
                        intervalTime = TimeSpan(hours: 0, minutes: 0, seconds: 0).toTimeInterval()
                        break
                    }
                    if key.toTimeInterval() < currentTimeInterval {
                        intervalTime = pinkTimetable[key]!.toTimeInterval()
                    }
                }
            }
        } else if line == "arl" { // est 12 mins between trains
            intervalTime = TimeSpan(hours: 0, minutes: 12, seconds: 0).toTimeInterval()
        } else { // srt
            if linecolor == "darkred" {
                intervalTime = TimeSpan(hours: 0, minutes: 15, seconds: 0).toTimeInterval()
            } else { // lightred
                intervalTime = TimeSpan(hours: 0, minutes: 20, seconds: 0).toTimeInterval()
            }
        }
    }
    
    return intervalTime.toTimeSpan().toDateString()
}


// get one interval time (command line)
func getIntervalTime2(station: String) -> String {
    var intervalTime: TimeInterval = 0
    var line: String = ""
    var linecolor: String = ""
    var is_extended: Bool = false
    
    let currentDirectoryURL = URL(fileURLWithPath: FileManager.default.currentDirectoryPath)
    let bundleURL = URL(fileURLWithPath: "jsondata.bundle", relativeTo: currentDirectoryURL)
    let bundle = Bundle(url: bundleURL)
    let jsonURL = bundle!.url(forResource: "Stations", withExtension: "json")!
    
    do {
        if let jsonData = try? Data(contentsOf: jsonURL) {
            let decodedData = try JSONDecoder().decode([Station].self, from: jsonData)
            let filteredData = decodedData.filter { $0.station_id == station }

//            print(filteredData)
            line = filteredData.first!.station_line
            linecolor = filteredData.first!.station_linecolor
            is_extended = filteredData.first!.is_extended
        }
    } catch {
        print("Error reading or decoding JSON data: \(error)")
    }
    
    let dateFormatter = DateFormatter()
    dateFormatter.timeZone = TimeZone(identifier: "Asia/Bangkok")
    dateFormatter.dateFormat = "yyyy-MM-dd HH:mm:ss"
    var currentTimeInterval = Date().timeIntervalSince(dateFormatter.date(from: "2024-03-12 00:00:00")!)
    // + delay 18 mins (not sure why)
    currentTimeInterval += 18 * 60
    currentTimeInterval = currentTimeInterval.truncatingRemainder(dividingBy: 86400)
    
    let currentDate = Date()
    let calendar = Calendar.current
    let dayOfWeek = calendar.component(.weekday, from: currentDate)
    // Check if it's a weekend (Saturday or Sunday)
    if dayOfWeek == 1 || dayOfWeek == 7 { // weekend
        if line == "bts" {
            if linecolor == "lightgreen" && is_extended {
                for key in holidayExtendedTimetable.keys.sorted() {
                    if key.toTimeInterval() < currentTimeInterval && currentTimeInterval < TimeSpan(hours: 6, minutes: 0, seconds: 0).toTimeInterval() {
                        intervalTime = TimeSpan(hours: 0, minutes: 0, seconds: 0).toTimeInterval()
                        break
                    }
                    if key.toTimeInterval() < currentTimeInterval {
                        intervalTime = holidayExtendedTimetable[key]!.toTimeInterval()
                    }
                }
            } else if linecolor == "lightgreen" {
                for key in holidayTimetable.keys.sorted() {
                    if key.toTimeInterval() < currentTimeInterval && currentTimeInterval < TimeSpan(hours: 6, minutes: 0, seconds: 0).toTimeInterval() {
                        intervalTime = TimeSpan(hours: 0, minutes: 0, seconds: 0).toTimeInterval()
                        break
                    }
                    if key.toTimeInterval() < currentTimeInterval {
                        intervalTime = holidayTimetable[key]!.toTimeInterval()
                    }
                }
            } else if linecolor == "darkgreen" {
                for key in holidayDarkgreenTimetable.keys.sorted() {
                    if key.toTimeInterval() < currentTimeInterval && currentTimeInterval < TimeSpan(hours: 6, minutes: 0, seconds: 0).toTimeInterval() {
                        intervalTime = TimeSpan(hours: 0, minutes: 0, seconds: 0).toTimeInterval()
                        break
                    }
                    if key.toTimeInterval() < currentTimeInterval {
                        intervalTime = holidayDarkgreenTimetable[key]!.toTimeInterval()
                    }
                }
            } else { // gold
                for key in goldHolidayTimetable.keys.sorted() {
                    if key.toTimeInterval() < currentTimeInterval && currentTimeInterval < TimeSpan(hours: 6, minutes: 0, seconds: 0).toTimeInterval() {
                        intervalTime = TimeSpan(hours: 0, minutes: 0, seconds: 0).toTimeInterval()
                        break
                    }
                    if key.toTimeInterval() < currentTimeInterval {
                        intervalTime = goldHolidayTimetable[key]!.toTimeInterval()
                    }
                }
            }
        } else if line == "mrt" {
            if linecolor == "blue" { // same as weekday
                for key in blueTimetable.keys.sorted() {
                    if key.toTimeInterval() < currentTimeInterval && currentTimeInterval < TimeSpan(hours: 6, minutes: 0, seconds: 0).toTimeInterval() {
                        intervalTime = TimeSpan(hours: 0, minutes: 0, seconds: 0).toTimeInterval()
                        break
                    }
                    if key.toTimeInterval() < currentTimeInterval {
                        intervalTime = blueTimetable[key]!.toTimeInterval()
                    }
                }
            } else if linecolor == "purple" {
                for key in holidayPurpleTimetable.keys.sorted() {
                    if key.toTimeInterval() < currentTimeInterval && currentTimeInterval < TimeSpan(hours: 5, minutes: 30, seconds: 0).toTimeInterval() {
                        intervalTime = TimeSpan(hours: 0, minutes: 0, seconds: 0).toTimeInterval()
                        break
                    }
                    if key.toTimeInterval() < currentTimeInterval {
                        intervalTime = holidayPurpleTimetable[key]!.toTimeInterval()
                    }
                }
            } else if linecolor == "yellow" {
                for key in yellowHolidayTimetable.keys.sorted() {
                    if key.toTimeInterval() < currentTimeInterval && currentTimeInterval < TimeSpan(hours: 6, minutes: 0, seconds: 0).toTimeInterval() {
                        intervalTime = TimeSpan(hours: 0, minutes: 0, seconds: 0).toTimeInterval()
                        break
                    }
                    if key.toTimeInterval() < currentTimeInterval {
                        intervalTime = yellowHolidayTimetable[key]!.toTimeInterval()
                    }
                }
            } else { // pink
                for key in pinkHolidayTimetable.keys.sorted() {
                    if key.toTimeInterval() < currentTimeInterval && currentTimeInterval < TimeSpan(hours: 6, minutes: 0, seconds: 0).toTimeInterval() {
                        intervalTime = TimeSpan(hours: 0, minutes: 0, seconds: 0).toTimeInterval()
                        break
                    }
                    if key.toTimeInterval() < currentTimeInterval {
                        intervalTime = pinkHolidayTimetable[key]!.toTimeInterval()
                    }
                }
            }
        } else if line == "arl" { // est 15 mins between trains
            intervalTime = TimeSpan(hours: 0, minutes: 15, seconds: 0).toTimeInterval()
        } else { // srt
            if linecolor == "darkred" {
                intervalTime = TimeSpan(hours: 0, minutes: 15, seconds: 0).toTimeInterval()
            } else { // lightred
                intervalTime = TimeSpan(hours: 0, minutes: 20, seconds: 0).toTimeInterval()
            }
        }
    } else { // weekday
        if line == "bts" {
            if linecolor == "lightgreen" && is_extended {
                for key in extendedTimetable.keys.sorted() {
                    if key.toTimeInterval() < currentTimeInterval && currentTimeInterval < TimeSpan(hours: 6, minutes: 0, seconds: 0).toTimeInterval() {
                        intervalTime = TimeSpan(hours: 0, minutes: 0, seconds: 0).toTimeInterval()
                        break
                    }
                    if key.toTimeInterval() < currentTimeInterval {
                        intervalTime = extendedTimetable[key]!.toTimeInterval()
                    }
                }
            } else if linecolor == "lightgreen" {
                for key in timetable.keys.sorted() {
                    if key.toTimeInterval() < currentTimeInterval && currentTimeInterval < TimeSpan(hours: 6, minutes: 0, seconds: 0).toTimeInterval() {
                        intervalTime = TimeSpan(hours: 0, minutes: 0, seconds: 0).toTimeInterval()
                        break
                    }
                    if key.toTimeInterval() < currentTimeInterval {
                        intervalTime = timetable[key]!.toTimeInterval()
                    }
                }
            } else if linecolor == "darkgreen" {
                for key in darkgreenTimetable.keys.sorted() {
                    if key.toTimeInterval() < currentTimeInterval && currentTimeInterval < TimeSpan(hours: 6, minutes: 0, seconds: 0).toTimeInterval() {
                        intervalTime = TimeSpan(hours: 0, minutes: 0, seconds: 0).toTimeInterval()
                        break
                    }
                    if key.toTimeInterval() < currentTimeInterval {
                        intervalTime = darkgreenTimetable[key]!.toTimeInterval()
                    }
                }
            } else { // gold
                for key in goldTimetable.keys.sorted() {
                    if key.toTimeInterval() < currentTimeInterval && currentTimeInterval < TimeSpan(hours: 6, minutes: 0, seconds: 0).toTimeInterval() {
                        intervalTime = TimeSpan(hours: 0, minutes: 0, seconds: 0).toTimeInterval()
                        break
                    }
                    if key.toTimeInterval() < currentTimeInterval {
                        intervalTime = goldTimetable[key]!.toTimeInterval()
                    }
                }
            }
        } else if line == "mrt" {
            if linecolor == "blue" { // same as weekday
                for key in blueTimetable.keys.sorted() {
                    if key.toTimeInterval() < currentTimeInterval && currentTimeInterval < TimeSpan(hours: 6, minutes: 0, seconds: 0).toTimeInterval() {
                        intervalTime = TimeSpan(hours: 0, minutes: 0, seconds: 0).toTimeInterval()
                        break
                    }
                    if key.toTimeInterval() < currentTimeInterval {
                        intervalTime = blueTimetable[key]!.toTimeInterval()
                    }
                }
            } else if linecolor == "purple" {
                for key in purpleTimetable.keys.sorted() {
                    if key.toTimeInterval() < currentTimeInterval && currentTimeInterval < TimeSpan(hours: 5, minutes: 30, seconds: 0).toTimeInterval() {
                        intervalTime = TimeSpan(hours: 0, minutes: 0, seconds: 0).toTimeInterval()
                        break
                    }
                    if key.toTimeInterval() < currentTimeInterval {
                        intervalTime = purpleTimetable[key]!.toTimeInterval()
                    }
                }
            } else if linecolor == "yellow" {
                for key in yellowTimetable.keys.sorted() {
                    if key.toTimeInterval() < currentTimeInterval && currentTimeInterval < TimeSpan(hours: 6, minutes: 0, seconds: 0).toTimeInterval() {
                        intervalTime = TimeSpan(hours: 0, minutes: 0, seconds: 0).toTimeInterval()
                        break
                    }
                    if key.toTimeInterval() < currentTimeInterval {
                        intervalTime = yellowTimetable[key]!.toTimeInterval()
                    }
                }
            } else { // pink
                for key in pinkTimetable.keys.sorted() {
                    if key.toTimeInterval() < currentTimeInterval && currentTimeInterval < TimeSpan(hours: 6, minutes: 0, seconds: 0).toTimeInterval() {
                        intervalTime = TimeSpan(hours: 0, minutes: 0, seconds: 0).toTimeInterval()
                        break
                    }
                    if key.toTimeInterval() < currentTimeInterval {
                        intervalTime = pinkTimetable[key]!.toTimeInterval()
                    }
                }
            }
        } else if line == "arl" { // est 12 mins between trains
            intervalTime = TimeSpan(hours: 0, minutes: 12, seconds: 0).toTimeInterval()
        } else { // srt
            if linecolor == "darkred" {
                intervalTime = TimeSpan(hours: 0, minutes: 15, seconds: 0).toTimeInterval()
            } else { // lightred
                intervalTime = TimeSpan(hours: 0, minutes: 20, seconds: 0).toTimeInterval()
            }
        }
    }
    
    return intervalTime.toTimeSpan().toDateString()
}


// get all interval time
func getAllIntervalTime() -> [String: String] {
    // weekday time
    var btsLightTime: TimeInterval = 0
    var btsLightExTime: TimeInterval = 0
    var btsDarkTime: TimeInterval = 0
    var mrtBlueTime: TimeInterval = 0
    var mrtPurpleTime: TimeInterval = 0
    var arlTime: TimeInterval = 0
    var goldTime: TimeInterval = 0
    var yellowTime: TimeInterval = 0
    var pinkTime: TimeInterval = 0
    var darkredTime: TimeInterval = 0
    var lightredTime : TimeInterval = 0
    // weekend time
    var btsLightEndTime: TimeInterval = 0
    var btsLightExEndTime: TimeInterval = 0
    var btsDarkEndTime: TimeInterval = 0
    var mrtPurpleEndTime: TimeInterval = 0
    var arlEndTime: TimeInterval = 0
    var goldEndTime: TimeInterval = 0
    var yellowEndTime: TimeInterval = 0
    var pinkEndTime: TimeInterval = 0
    
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
            btsLightTime = TimeSpan(hours: 0, minutes: 0, seconds: 0).toTimeInterval()
            break
        }
        if key.toTimeInterval() < currentTimeInterval {
            btsLightTime = timetable[key]!.toTimeInterval()
        }
    }
    
    for key in extendedTimetable.keys.sorted() {
        if key.toTimeInterval() < currentTimeInterval && currentTimeInterval < TimeSpan(hours: 6, minutes: 0, seconds: 0).toTimeInterval() {
            btsLightExTime = TimeSpan(hours: 0, minutes: 0, seconds: 0).toTimeInterval()
            break
        }
        if key.toTimeInterval() < currentTimeInterval {
            btsLightExTime = extendedTimetable[key]!.toTimeInterval()
        }
    }
    
    for key in darkgreenTimetable.keys.sorted() {
        if key.toTimeInterval() < currentTimeInterval && currentTimeInterval < TimeSpan(hours: 6, minutes: 0, seconds: 0).toTimeInterval() {
            btsDarkTime = TimeSpan(hours: 0, minutes: 0, seconds: 0).toTimeInterval()
            break
        }
        if key.toTimeInterval() < currentTimeInterval {
            btsDarkTime = darkgreenTimetable[key]!.toTimeInterval()
        }
    }
    
    for key in blueTimetable.keys.sorted() {
        if key.toTimeInterval() < currentTimeInterval && currentTimeInterval < TimeSpan(hours: 6, minutes: 0, seconds: 0).toTimeInterval() {
            mrtBlueTime = TimeSpan(hours: 0, minutes: 0, seconds: 0).toTimeInterval()
            break
        }
        if key.toTimeInterval() < currentTimeInterval {
            mrtBlueTime = blueTimetable[key]!.toTimeInterval()
        }
    }
    
    for key in purpleTimetable.keys.sorted() {
        if key.toTimeInterval() < currentTimeInterval && currentTimeInterval < TimeSpan(hours: 5, minutes: 30, seconds: 0).toTimeInterval() {
            mrtPurpleTime = TimeSpan(hours: 0, minutes: 0, seconds: 0).toTimeInterval()
            break
        }
        if key.toTimeInterval() < currentTimeInterval {
            mrtPurpleTime = purpleTimetable[key]!.toTimeInterval()
        }
    }
    
    arlTime = TimeSpan(hours: 0, minutes: 12, seconds: 0).toTimeInterval()
    
    for key in goldTimetable.keys.sorted() {
        if key.toTimeInterval() < currentTimeInterval && currentTimeInterval < TimeSpan(hours: 6, minutes: 0, seconds: 0).toTimeInterval() {
            goldTime = TimeSpan(hours: 6, minutes: 0, seconds: 0).toTimeInterval()
            break
        }
        if key.toTimeInterval() < currentTimeInterval {
            goldTime = goldTimetable[key]!.toTimeInterval()
        }
    }
    
    for key in yellowTimetable.keys.sorted() {
        if key.toTimeInterval() < currentTimeInterval && currentTimeInterval < TimeSpan(hours: 6, minutes: 0, seconds: 0).toTimeInterval() {
            yellowTime = TimeSpan(hours: 6, minutes: 0, seconds: 0).toTimeInterval()
            break
        }
        if key.toTimeInterval() < currentTimeInterval {
            yellowTime = yellowTimetable[key]!.toTimeInterval()
        }
    }
    
    for key in pinkTimetable.keys.sorted() {
        if key.toTimeInterval() < currentTimeInterval && currentTimeInterval < TimeSpan(hours: 6, minutes: 0, seconds: 0).toTimeInterval() {
            pinkTime = TimeSpan(hours: 6, minutes: 0, seconds: 0).toTimeInterval()
            break
        }
        if key.toTimeInterval() < currentTimeInterval {
            pinkTime = pinkTimetable[key]!.toTimeInterval()
        }
    }
    
    darkredTime = TimeSpan(hours: 0, minutes: 15, seconds: 0).toTimeInterval()

    lightredTime = TimeSpan(hours: 0, minutes: 20, seconds: 0).toTimeInterval()
    
    // weekend
    for key in holidayTimetable.keys.sorted() {
        if key.toTimeInterval() < currentTimeInterval && currentTimeInterval < TimeSpan(hours: 6, minutes: 0, seconds: 0).toTimeInterval() {
            btsLightEndTime = TimeSpan(hours: 0, minutes: 0, seconds: 0).toTimeInterval()
            break
        }
        if key.toTimeInterval() < currentTimeInterval {
            btsLightEndTime = holidayTimetable[key]!.toTimeInterval()
        }
    }
    
    for key in holidayExtendedTimetable.keys.sorted() {
        if key.toTimeInterval() < currentTimeInterval && currentTimeInterval < TimeSpan(hours: 6, minutes: 0, seconds: 0).toTimeInterval() {
            btsLightExEndTime = TimeSpan(hours: 0, minutes: 0, seconds: 0).toTimeInterval()
            break
        }
        if key.toTimeInterval() < currentTimeInterval {
            btsLightExEndTime = holidayExtendedTimetable[key]!.toTimeInterval()
        }
    }
    
    for key in holidayDarkgreenTimetable.keys.sorted() {
        if key.toTimeInterval() < currentTimeInterval && currentTimeInterval < TimeSpan(hours: 6, minutes: 0, seconds: 0).toTimeInterval() {
            btsDarkEndTime = TimeSpan(hours: 0, minutes: 0, seconds: 0).toTimeInterval()
            break
        }
        if key.toTimeInterval() < currentTimeInterval {
            btsDarkEndTime = holidayDarkgreenTimetable[key]!.toTimeInterval()
        }
    }
    
    for key in holidayPurpleTimetable.keys.sorted() {
        if key.toTimeInterval() < currentTimeInterval && currentTimeInterval < TimeSpan(hours: 6, minutes: 0, seconds: 0).toTimeInterval() {
            mrtPurpleEndTime = TimeSpan(hours: 0, minutes: 0, seconds: 0).toTimeInterval()
            break
        }
        if key.toTimeInterval() < currentTimeInterval {
            mrtPurpleEndTime = holidayPurpleTimetable[key]!.toTimeInterval()
        }
    }
    
    arlEndTime = TimeSpan(hours: 0, minutes: 15, seconds: 0).toTimeInterval()
    
    for key in goldHolidayTimetable.keys.sorted() {
        if key.toTimeInterval() < currentTimeInterval && currentTimeInterval < TimeSpan(hours: 6, minutes: 0, seconds: 0).toTimeInterval() {
            goldEndTime = TimeSpan(hours: 6, minutes: 0, seconds: 0).toTimeInterval()
            break
        }
        if key.toTimeInterval() < currentTimeInterval {
            goldEndTime = goldHolidayTimetable[key]!.toTimeInterval()
        }
    }
    
    for key in yellowHolidayTimetable.keys.sorted() {
        if key.toTimeInterval() < currentTimeInterval && currentTimeInterval < TimeSpan(hours: 6, minutes: 0, seconds: 0).toTimeInterval() {
            yellowEndTime = TimeSpan(hours: 6, minutes: 0, seconds: 0).toTimeInterval()
            break
        }
        if key.toTimeInterval() < currentTimeInterval {
            yellowEndTime = yellowHolidayTimetable[key]!.toTimeInterval()
        }
    }
    
    for key in pinkHolidayTimetable.keys.sorted() {
        if key.toTimeInterval() < currentTimeInterval && currentTimeInterval < TimeSpan(hours: 6, minutes: 0, seconds: 0).toTimeInterval() {
            pinkEndTime = TimeSpan(hours: 6, minutes: 0, seconds: 0).toTimeInterval()
            break
        }
        if key.toTimeInterval() < currentTimeInterval {
            pinkEndTime = pinkHolidayTimetable[key]!.toTimeInterval()
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
                  "arlTime": arlEndTime.toTimeSpan().toDateString(),
                  "goldTime": goldEndTime.toTimeSpan().toDateString(),
                  "yellowTime": yellowEndTime.toTimeSpan().toDateString(),
                  "pinkTime": pinkEndTime.toTimeSpan().toDateString(),
                  "darkRedTime": darkredTime.toTimeSpan().toDateString(),
                  "lightRedTime": lightredTime.toTimeSpan().toDateString()]
    } else { // weekday
        result = ["btsLightTime": btsLightTime.toTimeSpan().toDateString(),
                  "btsLightExTime": btsLightExTime.toTimeSpan().toDateString(),
                  "btsDarkTime": btsDarkTime.toTimeSpan().toDateString(),
                  "mrtBlueTime": mrtBlueTime.toTimeSpan().toDateString(),
                  "mrtPurpleTime": mrtPurpleTime.toTimeSpan().toDateString(),
                  "arlTime": arlTime.toTimeSpan().toDateString(),
                  "goldTime": goldTime.toTimeSpan().toDateString(),
                  "yellowTime": yellowTime.toTimeSpan().toDateString(),
                  "pinkTime": pinkTime.toTimeSpan().toDateString(),
                  "darkRedTime": darkredTime.toTimeSpan().toDateString(),
                  "lightRedTime": lightredTime.toTimeSpan().toDateString()]
    }
    
    return result
}
