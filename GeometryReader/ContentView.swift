//
//  ContentView.swift
//  GeometryReader
//
//  Created by Ramill Ibragimov on 14.11.2019.
//  Copyright © 2019 Ramill Ibragimov. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        GeometryReader_Intro()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

struct GeometryReader_Intro: View {
    var body: some View {
        VStack(spacing: 20) {
            Text("GeometryReader")
                .font(.largeTitle)
            
            Text("Introduction")
                .font(.title)
                .foregroundColor(.gray)
            
            Text("GeometryReader is a container view that pushes out to fill up all available space. You use it to help with positioning items within it.")
                .font(.title)
                .padding()
                .layoutPriority(1)
            
            GeometryReader { _ in
                Text("Views center automatically inside the GeometryReader")
                    .font(.title)
                
            }
            .foregroundColor(Color.white)
            .background(Color.pink)
        }
    }
}
