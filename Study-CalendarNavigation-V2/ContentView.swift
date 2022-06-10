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
    
    @State private var selectedTab = 1
    @State private var previouslySelectedTab = 1
    
    var body: some View {
        VStack {
            HStack {
                Button {
                    withAnimation {
                        previouslySelectedTab = selectedTab
                        selectedTab -= 1
                    }
                } label: {
                    Text("Minus One")
                }
                
                Button {
                    withAnimation {
                        previouslySelectedTab = selectedTab
                        selectedTab += 1
                    }
                } label: {
                    Text("Plus One")
                }
                
            }
            TabView(selection: $selectedTab) {
                ForEach(vm.dayDates, id: \.self) { day in
                    //                    ZStack {
                    //  color
                   // VStack {
                        
                        DayView(day: day)
                        //                    }
                 //   }
                    .tag(day.date)
//                    .frame(width: 300, height: 1000, alignment: .center)
//                    .background(.blue)
                }
                
            }
            .onAppear{vm.getDays()}
           // .tabViewStyle(.page)
             .tabViewStyle(.page(indexDisplayMode: .never))
            // .indexViewStyle(.page(backgroundDisplayMode: .interactive))
          //  .indexViewStyle(.page(backgroundDisplayMode: .never))
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
