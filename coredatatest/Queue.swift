//
//  Queue.swift
//  coredatatest
//
//  Created by Tanawit Poumloyfha on 12/3/2567 BE.
//

import Foundation

// Define a simple generic Queue structure
struct Queue<T> {
    private var elements: [T] = []

    // Enqueue an element to the end of the queue
    mutating func enqueue(_ element: T) {
        elements.append(element)
    }

    // Dequeue an element from the front of the queue
    mutating func dequeue() -> T? {
        return elements.isEmpty ? nil : elements.removeFirst()
    }

    // Peek at the front element of the queue without removing it
    func peek() -> T? {
        return elements.first
    }

    // Check if the queue is empty
    var isEmpty: Bool {
        return elements.isEmpty
    }

    // Get the number of elements in the queue
    var count: Int {
        return elements.count
    }
}

struct TimeSpan: Hashable, Comparable {
    static func < (lhs: TimeSpan, rhs: TimeSpan) -> Bool {
        let lhsTotalSeconds = lhs.hours * 3600 + lhs.minutes * 60 + lhs.seconds
        let rhsTotalSeconds = rhs.hours * 3600 + rhs.minutes * 60 + rhs.seconds
        return lhsTotalSeconds < rhsTotalSeconds
    }
    
    var hours: Int
    var minutes: Int
    var seconds: Int

    init(hours: Int, minutes: Int, seconds: Int) {
        self.hours = hours
        self.minutes = minutes
        self.seconds = seconds
    }

    func toTimeInterval() -> TimeInterval {
        return TimeInterval((hours * 3600) + (minutes * 60) + seconds)
    }
}

extension TimeInterval {
    func toTimeSpan() -> TimeSpan {
        return TimeSpan(hours: Int(self)/3600, minutes: (Int(self)%3600)/60, seconds: Int(self)%60)
    }
}
