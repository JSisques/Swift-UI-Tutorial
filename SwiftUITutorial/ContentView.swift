//
//  ContentView.swift
//  SwiftUITutorial
//
//  Created by Javier Plaza Sisqués on 23/8/21.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        Text("Hola mundo!")
            .font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
            .foregroundColor(Color.red)
            .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
