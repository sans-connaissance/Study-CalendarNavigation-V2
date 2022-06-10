//
//  TabView.swift
//  Study-CalendarNavigation-V2
//
//  Created by David Malicke on 6/9/22.
//

import SwiftUI

struct TabViewView: View {
    
    private let numbers = 1...1000
    private let colors: [Color] = [.red, .blue, .green, .black]
    @State private var selectedTab = 5
    @State private var previouslySelectedTab = 5
    
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
                ForEach(numbers, id: \.self) { number in
                    //                    ZStack {
                    //  color
                    VStack {
                        
                        Text("\(number.description)")
                            .font(.title)
                            .foregroundColor(.black)
                        //                    }
                    }
                    .tag(number)
                    .frame(width: 300, height: 1000, alignment: .center)
                    .background(.blue)
                }
                
            }
           // .tabViewStyle(.page)
             .tabViewStyle(.page(indexDisplayMode: .never))
            // .indexViewStyle(.page(backgroundDisplayMode: .interactive))
          //  .indexViewStyle(.page(backgroundDisplayMode: .never))
        }
    }
}

struct TabViewView_Previews: PreviewProvider {
    static var previews: some View {
        TabViewView()
    }
}
