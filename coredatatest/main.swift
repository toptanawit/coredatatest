//
//  main.swift
//  coredatatest
//
//  Created by Tanawit Poumloyfha on 9/3/2567 BE.
//

import Foundation

//let testresult = getAllPossibleRoutes(start: "N8", end: "E17")
// testresult [([(N8 data),(N7 data),...],fee),([(N8 data),(N7 data),...],fee),([(N8 data),(N7 data),...],fee),...]

/*
let testresult = getAllPossibleRoutes2(start: "N8", end: "N7")
for route in testresult {
    for station in route.stations {
        print(station.station_id, station.station_name)
    }
    print("No. of stations:",route.stations.count)
    print("Fees:", route.fee)
    print("Time:", route.time)
    print("----------")
}
*/

// ------------------

/*
let testalltime = getAllArrivingTime()
for (key, value) in testalltime {
    print(key, "-", value)
}
 */

// ------------------

let testinterval = getIntervalTime2(station: "A1")
print("interval:",testinterval)
let testinterval2 = getAllIntervalTime2()
for (key, value) in testinterval2 {
    print(key, "-", value)
}
