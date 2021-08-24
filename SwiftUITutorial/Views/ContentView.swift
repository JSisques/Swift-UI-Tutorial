//
//  ContentView.swift
//  SwiftUITutorial
//
//  Created by Javier Plaza Sisqués on 23/8/21.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        
        //Dentro de un stack solo se pueden tener 10 vistas internas
        VStack(alignment: .center, spacing: 20) {
            Text("Curso de Swift UI")
                .font(.largeTitle)
                .foregroundColor(Color.blue)
                .background(Color.gray)
                .padding()
            
            Spacer()
            
            ZStack(){
                Text("").frame(maxWidth: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/, maxHeight: .infinity).background(Color.gray)
                    .padding()
                
                Text("").frame(maxWidth: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/, maxHeight: .infinity).background(Color.red)
                    .padding(40)
                
                Text("").frame(maxWidth: .infinity, maxHeight: .infinity).background(Color.green)
                    .padding(60)
                
                Text("").frame(maxWidth: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/, maxHeight: .infinity).background(Color.blue)
                    .padding(80)
            }
            
            Spacer()
            
            HStack(){
                Text("Hola a todos!")
                    .background(Color.gray)
                    .padding()
                
                Spacer()
                
                Text("Esto es un curso de desarrollo de Swift UI")
                    .background(Color.gray)
                    .padding()
            }
            

            
        }.background(Color.yellow)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
