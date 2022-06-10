//
//  TabView.swift
//  Study-CalendarNavigation-V2
//
//  Created by David Malicke on 6/9/22.
//

import SwiftUI

struct TabViewView: View {
    
    private let numbers = 1...100
    private let colors: [Color] = [.red, .blue, .green, .black]
    @State private var selectedTab = 5
    
    var body: some View {
        VStack {
            TabView(selection: $selectedTab) {
                ForEach(numbers, id: \.self) { color in
//                    ZStack {
                      //  color
                    VStack {
                        Text("\(color.description)")
                            .font(.title)
                            .foregroundColor(.black)
                            
//                    }
                    }
                    .tag(color)
                    .frame(width: 300, height: 1000, alignment: .center)
                    .background(.blue)
                }
            
            }
           // .tabViewStyle(.page)
            .tabViewStyle(.page(indexDisplayMode: .never))
           // .indexViewStyle(.page(backgroundDisplayMode: .interactive))
            .indexViewStyle(.page(backgroundDisplayMode: .never))
        }
    }
}

struct TabViewView_Previews: PreviewProvider {
    static var previews: some View {
        TabViewView()
    }
}
