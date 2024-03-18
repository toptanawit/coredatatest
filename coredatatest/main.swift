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

//let testresult2 = getAllPossibleRoutes(start: "N8", end: "N7")

// ------------------

let testalltime = getAllArrivingTime()
for (key, value) in testalltime {
    print(key, "-", value)
}


