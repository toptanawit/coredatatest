//
//  main.swift
//  coredatatest
//
//  Created by Tanawit Poumloyfha on 9/3/2567 BE.
//

import Foundation


// ------------------

/*
let testalltime = getAllArrivingTime()
for (key, value) in testalltime {
    print(key, "-", value)
}
*/

// ------------------


/*
let testinterval = getIntervalTime2(station: "A1")
print("interval:",testinterval)
let testinterval2 = getAllIntervalTime()
for (key, value) in testinterval2 {
    print(key, "-", value)
}


let teststation = ["A1","E4","E12","S2","BL12","PP03","G1","YL11","PK23","RN02","RL02"]
for station in teststation {
    print(station,"interval:",getIntervalTime2(station: station))
}
*/

// ------------------

/*
let testresult = getAllPossibleRoutes2(start: "N9", end: "YL16")
for route in testresult {
    for station in route.stations {
        print(station.station_id, station.station_name)
    }
    print("No. of stations:", route.stations.count - 1)
    print("Fees:", route.fee)
    print("Time:", route.time)
    print("----------")
}
print("No. of routes:", testresult.count)
*/


// ------------------


let stations = ["CEN","E1","S2","BL01","PP04","A4","YL01","RN04","PK30","RL02"]
for station in stations {
    print(station, getArrivingTime2(station_id: station))
}

