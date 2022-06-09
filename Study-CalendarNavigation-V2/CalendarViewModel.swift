//
//  CalendarViewModel.swift
//  Study-CalendarNavigation-V2
//
//  Created by David Malicke on 6/8/22.
//

import Foundation

class CalendarViewModel: ObservableObject {
    
    @Published var dayDates: [Day] = []
    
    
    func getDays() {
        dayDates = dayData
    }
    
}
