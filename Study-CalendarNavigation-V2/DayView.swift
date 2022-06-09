//
//  DayView.swift
//  Study-CalendarNavigation-V2
//
//  Created by David Malicke on 6/8/22.
//

import SwiftUI

struct DayView: View {
    
    let day: Day
    
    var body: some View {
        VStack(alignment: .leading) {
            HStack {
                Spacer()
                Text("\(day.date)")
                Spacer()
            }
            ForEach(day.hours, id: \.self) { hour in
                Text("\(hour)am")
                Rectangle()
                    .frame(width: 300, height: 2, alignment: .center)
                
            }
        }
        .frame(width: 300, height: 200)
    }
}

struct DayView_Previews: PreviewProvider {
    static var previews: some View {
        DayView(day: Day.example)
    }
}
