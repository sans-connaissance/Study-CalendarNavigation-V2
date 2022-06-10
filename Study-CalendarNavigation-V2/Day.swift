//
//  Day.swift
//  Study-CalendarNavigation-V2
//
//  Created by David Malicke on 6/8/22.
//

import Foundation

struct Day: Hashable {
    let date: Int
    let hours: [Int]
    
    static let example = Day(date: 1, hours: [9, 10, 11, 12, 1])
    
}

var dayData = [
    Day(date: 1, hours: [9, 10, 11, 12, 1]),
    Day(date: 2, hours: [9, 10, 11, 12, 1]),
    Day(date: 3, hours: [9, 10, 11, 12, 1]),
    Day(date: 4, hours: [9, 10, 11, 12, 1]),
    Day(date: 5, hours: [9, 10, 11, 12, 1]),
    Day(date: 6, hours: [9, 10, 11, 12, 1]),
    Day(date: 7, hours: [9, 10, 11, 12, 1]),
]
