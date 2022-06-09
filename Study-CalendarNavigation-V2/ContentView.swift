//
//  ContentView.swift
//  Study-CalendarNavigation-V2
//
//  Created by David Malicke on 6/8/22.
//

import SwiftUI

struct ContentView: View {
    
    @StateObject var vm = CalendarViewModel()
    //the answer https://www.youtube.com/watch?v=zzqKhitBQfM
    var body: some View {
        
        VStack {
            HStack(alignment: .center) {
                Text("S")
                Text("M")
                Text("T")
                Text("W")
                Text("T")
                Text("F")
                Text("Su")
            }
            
            DayView(day: Day.example)
            Spacer()
        }
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
