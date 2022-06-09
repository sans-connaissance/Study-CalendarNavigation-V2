//
//  TabView.swift
//  Study-CalendarNavigation-V2
//
//  Created by David Malicke on 6/9/22.
//

import SwiftUI

struct TabViewView: View {
    
    private let colors: [Color] = [.red, .blue, .green, .black]
    
    var body: some View {
        VStack {
            TabView {
                ForEach(colors, id: \.self) { color in
                    ZStack {
                        color
                        Text("\(color.description)")
                            .font(.title)
                            .foregroundColor(.white)
                    }
                    
                }
            
            }
            .tabViewStyle(.page)
           // .tabViewStyle(.page(indexDisplayMode: .never))
            .indexViewStyle(.page(backgroundDisplayMode: .interactive))
            //.indexViewStyle(.page(backgroundDisplayMode: .never))
        }
    }
}

struct TabViewView_Previews: PreviewProvider {
    static var previews: some View {
        TabViewView()
    }
}
