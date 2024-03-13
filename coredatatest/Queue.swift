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

//struct TimeSpan: Hashable {
//    var hours: Int
//    var minutes: Int
//    var seconds: Int
//
//    init(hours: Int, minutes: Int, seconds: Int) {
//        self.hours = hours
//        self.minutes = minutes
//        self.seconds = seconds
//    }
//
//    func totalSeconds() -> Int {
//        return hours * 3600 + minutes * 60 + seconds
//    }
//}
