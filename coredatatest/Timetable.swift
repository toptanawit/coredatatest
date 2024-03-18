//
//  Timetable.swift
//  coredatatest
//
//  Created by Tanawit Poumloyfha on 18/3/2567 BE.
//

import Foundation

// BTS
var timetable: [TimeSpan: TimeSpan] = [
    TimeSpan(hours: 0, minutes: 0, seconds: 0): TimeSpan(hours: 0, minutes: 5, seconds: 0),
    
    TimeSpan(hours: 6, minutes: 0, seconds: 0): TimeSpan(hours: 0, minutes: 5, seconds: 0),
    TimeSpan(hours: 7, minutes: 0, seconds: 0): TimeSpan(hours: 0, minutes: 2, seconds: 40),
    TimeSpan(hours: 9, minutes: 0, seconds: 0): TimeSpan(hours: 0, minutes: 3, seconds: 35),
    TimeSpan(hours: 9, minutes: 30, seconds: 0): TimeSpan(hours: 0, minutes: 6, seconds: 30),
    TimeSpan(hours: 16, minutes: 0, seconds: 0): TimeSpan(hours: 0, minutes: 4, seconds: 25),
    TimeSpan(hours: 16, minutes: 30, seconds: 0): TimeSpan(hours: 0, minutes: 2, seconds: 40),
    TimeSpan(hours: 17, minutes: 0, seconds: 0): TimeSpan(hours: 0, minutes: 2, seconds: 40),
    TimeSpan(hours: 20, minutes: 0, seconds: 0): TimeSpan(hours: 0, minutes: 4, seconds: 25),
    TimeSpan(hours: 21, minutes: 0, seconds: 0): TimeSpan(hours: 0, minutes: 6, seconds: 0),
    TimeSpan(hours: 22, minutes: 0, seconds: 0): TimeSpan(hours: 0, minutes: 8, seconds: 0)
]

var extendedTimetable: [TimeSpan: TimeSpan] = [
    TimeSpan(hours: 0, minutes: 0, seconds: 0): TimeSpan(hours: 0, minutes: 5, seconds: 0),
    
    TimeSpan(hours: 6, minutes: 0, seconds: 0): TimeSpan(hours: 0, minutes: 5, seconds: 0),
    TimeSpan(hours: 7, minutes: 0, seconds: 0): TimeSpan(hours: 0, minutes: 5, seconds: 20),
    TimeSpan(hours: 9, minutes: 0, seconds: 0): TimeSpan(hours: 0, minutes: 3, seconds: 35),
    TimeSpan(hours: 9, minutes: 30, seconds: 0): TimeSpan(hours: 0, minutes: 6, seconds: 30),
    TimeSpan(hours: 16, minutes: 0, seconds: 0): TimeSpan(hours: 0, minutes: 4, seconds: 25),
    TimeSpan(hours: 16, minutes: 30, seconds: 0): TimeSpan(hours: 0, minutes: 5, seconds: 20),
    TimeSpan(hours: 17, minutes: 0, seconds: 0): TimeSpan(hours: 0, minutes: 5, seconds: 20),
    TimeSpan(hours: 20, minutes: 0, seconds: 0): TimeSpan(hours: 0, minutes: 4, seconds: 25),
    TimeSpan(hours: 21, minutes: 0, seconds: 0): TimeSpan(hours: 0, minutes: 6, seconds: 0),
    TimeSpan(hours: 22, minutes: 0, seconds: 0): TimeSpan(hours: 0, minutes: 8, seconds: 0)
]

var darkgreenTimetable: [TimeSpan: TimeSpan] = [
    TimeSpan(hours: 0, minutes: 0, seconds: 0): TimeSpan(hours: 0, minutes: 6, seconds: 0),
    
    TimeSpan(hours: 6, minutes: 0, seconds: 0): TimeSpan(hours: 0, minutes: 6, seconds: 0),
    TimeSpan(hours: 7, minutes: 0, seconds: 0): TimeSpan(hours: 0, minutes: 3, seconds: 45),
    TimeSpan(hours: 9, minutes: 0, seconds: 0): TimeSpan(hours: 0, minutes: 6, seconds: 0),
    TimeSpan(hours: 9, minutes: 30, seconds: 0): TimeSpan(hours: 0, minutes: 6, seconds: 0),
    TimeSpan(hours: 16, minutes: 0, seconds: 0): TimeSpan(hours: 0, minutes: 6, seconds: 0),
    TimeSpan(hours: 16, minutes: 30, seconds: 0): TimeSpan(hours: 0, minutes: 6, seconds: 0),
    TimeSpan(hours: 17, minutes: 0, seconds: 0): TimeSpan(hours: 0, minutes: 3, seconds: 45),
    TimeSpan(hours: 20, minutes: 0, seconds: 0): TimeSpan(hours: 0, minutes: 6, seconds: 0),
    TimeSpan(hours: 21, minutes: 0, seconds: 0): TimeSpan(hours: 0, minutes: 6, seconds: 0),
    TimeSpan(hours: 22, minutes: 0, seconds: 0): TimeSpan(hours: 0, minutes: 8, seconds: 0)
]

var holidayTimetable: [TimeSpan: TimeSpan] = [
    TimeSpan(hours: 0, minutes: 0, seconds: 0): TimeSpan(hours: 0, minutes: 7, seconds: 0),
    
    TimeSpan(hours: 6, minutes: 0, seconds: 0): TimeSpan(hours: 0, minutes: 7, seconds: 0),
    TimeSpan(hours: 8, minutes: 0, seconds: 0): TimeSpan(hours: 0, minutes: 5, seconds: 55),
    TimeSpan(hours: 9, minutes: 0, seconds: 0): TimeSpan(hours: 0, minutes: 5, seconds: 55),
    TimeSpan(hours: 11, minutes: 0, seconds: 0): TimeSpan(hours: 0, minutes: 4, seconds: 30),
    TimeSpan(hours: 21, minutes: 0, seconds: 0): TimeSpan(hours: 0, minutes: 7, seconds: 0),
    TimeSpan(hours: 22, minutes: 0, seconds: 0): TimeSpan(hours: 0, minutes: 8, seconds: 0)
]

var holidayExtendedTimetable: [TimeSpan: TimeSpan] = [
    TimeSpan(hours: 0, minutes: 0, seconds: 0): TimeSpan(hours: 0, minutes: 7, seconds: 0),
    
    TimeSpan(hours: 6, minutes: 0, seconds: 0): TimeSpan(hours: 0, minutes: 7, seconds: 0),
    TimeSpan(hours: 8, minutes: 0, seconds: 0): TimeSpan(hours: 0, minutes: 5, seconds: 55),
    TimeSpan(hours: 9, minutes: 0, seconds: 0): TimeSpan(hours: 0, minutes: 5, seconds: 55),
    TimeSpan(hours: 11, minutes: 0, seconds: 0): TimeSpan(hours: 0, minutes: 6, seconds: 0),
    TimeSpan(hours: 21, minutes: 0, seconds: 0): TimeSpan(hours: 0, minutes: 7, seconds: 0),
    TimeSpan(hours: 22, minutes: 0, seconds: 0): TimeSpan(hours: 0, minutes: 8, seconds: 0)
]

var holidayDarkgreenTimetable: [TimeSpan: TimeSpan] = [
    TimeSpan(hours: 0, minutes: 0, seconds: 0): TimeSpan(hours: 0, minutes: 7, seconds: 0),
    
    TimeSpan(hours: 6, minutes: 0, seconds: 0): TimeSpan(hours: 0, minutes: 7, seconds: 0),
    TimeSpan(hours: 8, minutes: 0, seconds: 0): TimeSpan(hours: 0, minutes: 7, seconds: 0),
    TimeSpan(hours: 9, minutes: 0, seconds: 0): TimeSpan(hours: 0, minutes: 5, seconds: 40),
    TimeSpan(hours: 11, minutes: 0, seconds: 0): TimeSpan(hours: 0, minutes: 5, seconds: 40),
    TimeSpan(hours: 21, minutes: 0, seconds: 0): TimeSpan(hours: 0, minutes: 7, seconds: 0),
    TimeSpan(hours: 22, minutes: 0, seconds: 0): TimeSpan(hours: 0, minutes: 8, seconds: 0)
]

// MRT
var blueTimetable: [TimeSpan: TimeSpan] = [
    TimeSpan(hours: 0, minutes: 0, seconds: 0): TimeSpan(hours: 0, minutes: 7, seconds: 0),

    TimeSpan(hours: 6, minutes: 0, seconds: 0): TimeSpan(hours: 0, minutes: 7, seconds: 0),
    TimeSpan(hours: 7, minutes: 0, seconds: 0): TimeSpan(hours: 0, minutes: 4, seconds: 0),
    TimeSpan(hours: 9, minutes: 0, seconds: 0): TimeSpan(hours: 0, minutes: 7, seconds: 0),
    TimeSpan(hours: 16, minutes: 30, seconds: 0): TimeSpan(hours: 0, minutes: 4, seconds: 0),
    TimeSpan(hours: 19, minutes: 30, seconds: 0): TimeSpan(hours: 0, minutes: 7, seconds: 0)
]

var purpleTimetable: [TimeSpan: TimeSpan] = [
    TimeSpan(hours: 0, minutes: 0, seconds: 0): TimeSpan(hours: 0, minutes: 9, seconds: 0),

    TimeSpan(hours: 5, minutes: 30, seconds: 0): TimeSpan(hours: 0, minutes: 9, seconds: 0),
    TimeSpan(hours: 6, minutes: 30, seconds: 0): TimeSpan(hours: 0, minutes: 6, seconds: 0),
    TimeSpan(hours: 8, minutes: 30, seconds: 0): TimeSpan(hours: 0, minutes: 9, seconds: 0),
    TimeSpan(hours: 17, minutes: 0, seconds: 0): TimeSpan(hours: 0, minutes: 6, seconds: 0),
    TimeSpan(hours: 19, minutes: 30, seconds: 0): TimeSpan(hours: 0, minutes: 9, seconds: 0)
]

var holidayPurpleTimetable: [TimeSpan: TimeSpan] = [
    TimeSpan(hours: 0, minutes: 0, seconds: 0): TimeSpan(hours: 0, minutes: 9, seconds: 0),

    TimeSpan(hours: 6, minutes: 0, seconds: 0): TimeSpan(hours: 0, minutes: 9, seconds: 0),
    TimeSpan(hours: 6, minutes: 30, seconds: 0): TimeSpan(hours: 0, minutes: 6, seconds: 0),
    TimeSpan(hours: 8, minutes: 30, seconds: 0): TimeSpan(hours: 0, minutes: 9, seconds: 0),
    TimeSpan(hours: 17, minutes: 0, seconds: 0): TimeSpan(hours: 0, minutes: 6, seconds: 0),
    TimeSpan(hours: 19, minutes: 30, seconds: 0): TimeSpan(hours: 0, minutes: 9, seconds: 0)
]

// ARL
var arlTimetable: [TimeSpan] = [
    TimeSpan(hours: 0, minutes: 14, seconds: 0),
    TimeSpan(hours: 6, minutes: 14, seconds: 0),
    TimeSpan(hours: 6, minutes: 26, seconds: 0),
    TimeSpan(hours: 6, minutes: 38, seconds: 0),
    TimeSpan(hours: 6, minutes: 51, seconds: 0),
    TimeSpan(hours: 7, minutes: 4, seconds: 0),
    TimeSpan(hours: 7, minutes: 16, seconds: 0),
    TimeSpan(hours: 7, minutes: 29, seconds: 0),
    TimeSpan(hours: 7, minutes: 42, seconds: 0),
    TimeSpan(hours: 7, minutes: 54, seconds: 0),
    TimeSpan(hours: 8, minutes: 7, seconds: 0),
    TimeSpan(hours: 8, minutes: 20, seconds: 0),
    TimeSpan(hours: 8, minutes: 32, seconds: 0),
    TimeSpan(hours: 8, minutes: 45, seconds: 0),
    TimeSpan(hours: 8, minutes: 58, seconds: 0),
    TimeSpan(hours: 9, minutes: 11, seconds: 0),
    TimeSpan(hours: 9, minutes: 24, seconds: 0),
    TimeSpan(hours: 9, minutes: 38, seconds: 0),
    TimeSpan(hours: 9, minutes: 48, seconds: 0),
    TimeSpan(hours: 10, minutes: 2, seconds: 0),
    TimeSpan(hours: 10, minutes: 20, seconds: 0),
    TimeSpan(hours: 10, minutes: 35, seconds: 0),
    TimeSpan(hours: 10, minutes: 51, seconds: 0),
    TimeSpan(hours: 11, minutes: 7, seconds: 0),
    TimeSpan(hours: 11, minutes: 22, seconds: 0),
    TimeSpan(hours: 11, minutes: 38, seconds: 0),
    TimeSpan(hours: 11, minutes: 54, seconds: 0),
    TimeSpan(hours: 12, minutes: 9, seconds: 0),
    TimeSpan(hours: 12, minutes: 25, seconds: 0),
    TimeSpan(hours: 12, minutes: 41, seconds: 0),
    TimeSpan(hours: 12, minutes: 56, seconds: 0),
    TimeSpan(hours: 13, minutes: 12, seconds: 0),
    TimeSpan(hours: 13, minutes: 28, seconds: 0),
    TimeSpan(hours: 13, minutes: 43, seconds: 0),
    TimeSpan(hours: 13, minutes: 59, seconds: 0),
    TimeSpan(hours: 14, minutes: 15, seconds: 0),
    TimeSpan(hours: 14, minutes: 30, seconds: 0),
    TimeSpan(hours: 14, minutes: 45, seconds: 0),
    TimeSpan(hours: 15, minutes: 2, seconds: 0),
    TimeSpan(hours: 15, minutes: 17, seconds: 0),
    TimeSpan(hours: 15, minutes: 33, seconds: 0),
    TimeSpan(hours: 15, minutes: 49, seconds: 0),
    TimeSpan(hours: 16, minutes: 4, seconds: 0),
    TimeSpan(hours: 16, minutes: 22, seconds: 0),
    TimeSpan(hours: 16, minutes: 37, seconds: 0),
    TimeSpan(hours: 16, minutes: 51, seconds: 0),
    TimeSpan(hours: 17, minutes: 7, seconds: 0),
    TimeSpan(hours: 17, minutes: 19, seconds: 0),
    TimeSpan(hours: 17, minutes: 31, seconds: 0),
    TimeSpan(hours: 17, minutes: 44, seconds: 0),
    TimeSpan(hours: 17, minutes: 57, seconds: 0),
    TimeSpan(hours: 18, minutes: 9, seconds: 0),
    TimeSpan(hours: 18, minutes: 22, seconds: 0),
    TimeSpan(hours: 18, minutes: 35, seconds: 0),
    TimeSpan(hours: 18, minutes: 47, seconds: 0),
    TimeSpan(hours: 19, minutes: 0, seconds: 0),
    TimeSpan(hours: 19, minutes: 13, seconds: 0),
    TimeSpan(hours: 19, minutes: 25, seconds: 0),
    TimeSpan(hours: 19, minutes: 38, seconds: 0),
    TimeSpan(hours: 19, minutes: 51, seconds: 0),
    TimeSpan(hours: 20, minutes: 3, seconds: 0),
    TimeSpan(hours: 20, minutes: 16, seconds: 0),
    TimeSpan(hours: 20, minutes: 29, seconds: 0),
    TimeSpan(hours: 20, minutes: 42, seconds: 0),
    TimeSpan(hours: 20, minutes: 56, seconds: 0),
    TimeSpan(hours: 21, minutes: 10, seconds: 0),
    TimeSpan(hours: 21, minutes: 20, seconds: 0),
    TimeSpan(hours: 21, minutes: 35, seconds: 0),
    TimeSpan(hours: 21, minutes: 51, seconds: 0),
    TimeSpan(hours: 22, minutes: 7, seconds: 0),
    TimeSpan(hours: 22, minutes: 22, seconds: 0),
    TimeSpan(hours: 22, minutes: 38, seconds: 0),
    TimeSpan(hours: 22, minutes: 54, seconds: 0),
    TimeSpan(hours: 23, minutes: 9, seconds: 0),
    TimeSpan(hours: 23, minutes: 25, seconds: 0),
    TimeSpan(hours: 23, minutes: 41, seconds: 0),
    TimeSpan(hours: 23, minutes: 56, seconds: 0)
]

// ARL Holiday
var arlHolidayTimetable: [TimeSpan] = [
    TimeSpan(hours: 0, minutes: 2, seconds: 0),
    TimeSpan(hours: 0, minutes: 17, seconds: 0),
    TimeSpan(hours: 6, minutes: 16, seconds: 0),
    TimeSpan(hours: 6, minutes: 32, seconds: 0),
    TimeSpan(hours: 6, minutes: 48, seconds: 0),
    TimeSpan(hours: 7, minutes: 3, seconds: 0),
    TimeSpan(hours: 7, minutes: 19, seconds: 0),
    TimeSpan(hours: 7, minutes: 35, seconds: 0),
    TimeSpan(hours: 7, minutes: 50, seconds: 0),
    TimeSpan(hours: 8, minutes: 6, seconds: 0),
    TimeSpan(hours: 8, minutes: 22, seconds: 0),
    TimeSpan(hours: 8, minutes: 37, seconds: 0),
    TimeSpan(hours: 8, minutes: 53, seconds: 0),
    TimeSpan(hours: 9, minutes: 9, seconds: 0),
    TimeSpan(hours: 9, minutes: 24, seconds: 0),
    TimeSpan(hours: 9, minutes: 40, seconds: 0),
    TimeSpan(hours: 9, minutes: 56, seconds: 0),
    TimeSpan(hours: 10, minutes: 11, seconds: 0),
    TimeSpan(hours: 10, minutes: 27, seconds: 0),
    TimeSpan(hours: 10, minutes: 43, seconds: 0),
    TimeSpan(hours: 10, minutes: 58, seconds: 0),
    TimeSpan(hours: 11, minutes: 14, seconds: 0),
    TimeSpan(hours: 11, minutes: 30, seconds: 0),
    TimeSpan(hours: 11, minutes: 45, seconds: 0),
    TimeSpan(hours: 12, minutes: 1, seconds: 0),
    TimeSpan(hours: 12, minutes: 17, seconds: 0),
    TimeSpan(hours: 12, minutes: 32, seconds: 0),
    TimeSpan(hours: 12, minutes: 48, seconds: 0),
    TimeSpan(hours: 13, minutes: 4, seconds: 0),
    TimeSpan(hours: 13, minutes: 19, seconds: 0),
    TimeSpan(hours: 13, minutes: 35, seconds: 0),
    TimeSpan(hours: 13, minutes: 51, seconds: 0),
    TimeSpan(hours: 14, minutes: 6, seconds: 0),
    TimeSpan(hours: 14, minutes: 22, seconds: 0),
    TimeSpan(hours: 14, minutes: 38, seconds: 0),
    TimeSpan(hours: 14, minutes: 53, seconds: 0),
    TimeSpan(hours: 15, minutes: 9, seconds: 0),
    TimeSpan(hours: 15, minutes: 25, seconds: 0),
    TimeSpan(hours: 15, minutes: 40, seconds: 0),
    TimeSpan(hours: 15, minutes: 56, seconds: 0),
    TimeSpan(hours: 16, minutes: 12, seconds: 0),
    TimeSpan(hours: 16, minutes: 27, seconds: 0),
    TimeSpan(hours: 16, minutes: 43, seconds: 0),
    TimeSpan(hours: 16, minutes: 59, seconds: 0),
    TimeSpan(hours: 17, minutes: 14, seconds: 0),
    TimeSpan(hours: 17, minutes: 30, seconds: 0),
    TimeSpan(hours: 17, minutes: 46, seconds: 0),
    TimeSpan(hours: 18, minutes: 1, seconds: 0),
    TimeSpan(hours: 18, minutes: 17, seconds: 0),
    TimeSpan(hours: 18, minutes: 33, seconds: 0),
    TimeSpan(hours: 18, minutes: 48, seconds: 0),
    TimeSpan(hours: 19, minutes: 4, seconds: 0),
    TimeSpan(hours: 19, minutes: 20, seconds: 0),
    TimeSpan(hours: 19, minutes: 35, seconds: 0),
    TimeSpan(hours: 19, minutes: 51, seconds: 0),
    TimeSpan(hours: 20, minutes: 7, seconds: 0),
    TimeSpan(hours: 20, minutes: 22, seconds: 0),
    TimeSpan(hours: 20, minutes: 38, seconds: 0),
    TimeSpan(hours: 20, minutes: 54, seconds: 0),
    TimeSpan(hours: 21, minutes: 9, seconds: 0),
    TimeSpan(hours: 21, minutes: 25, seconds: 0),
    TimeSpan(hours: 21, minutes: 41, seconds: 0),
    TimeSpan(hours: 21, minutes: 56, seconds: 0),
    TimeSpan(hours: 22, minutes: 12, seconds: 0),
    TimeSpan(hours: 22, minutes: 28, seconds: 0),
    TimeSpan(hours: 22, minutes: 43, seconds: 0),
    TimeSpan(hours: 22, minutes: 59, seconds: 0),
    TimeSpan(hours: 23, minutes: 15, seconds: 0),
    TimeSpan(hours: 23, minutes: 30, seconds: 0),
    TimeSpan(hours: 23, minutes: 46, seconds: 0)
]
