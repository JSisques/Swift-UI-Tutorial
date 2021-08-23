//
//  MainView.swift
//  SwiftUITutorial
//
//  Created by Javier Plaza Sisqués on 23/8/21.
//

import SwiftUI

struct MainView: View {
    var body: some View {
        
        ScrollView(){
            VStack(){
                MapView().frame(height: 400)
                ImageView().offset(y: -150)
                Divider().padding() //Linea divisoria
                ContentView()
            }
        }
    }
}

struct MainView_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            MainView()
            MainView()
                .preferredColorScheme(.dark)
                .previewDevice("iPhone 12 Pro")
        }
    }
}
