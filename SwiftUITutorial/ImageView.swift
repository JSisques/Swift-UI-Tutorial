//
//  ImageView.swift
//  SwiftUITutorial
//
//  Created by Javier Plaza Sisqués on 23/8/21.
//

import SwiftUI

struct ImageView: View {
    var body: some View {
        
        //SF Icons
        VStack {
            //Podemos usar .scaledToFit() para ajustarlo a lo ancho o .frame para establecer una altura y una anchura
            //Podemos usar .clipShape(Circle()) para redondear la imagen
            
            //Tiene jerarquia
            Image("pikachu").resizable().padding(40).frame(width: 300, height: 300, alignment: .center).background(Color.gray).clipShape(Circle()).overlay(Circle().stroke(Color.blue, lineWidth: 4)).shadow(color: Color.gray, radius: /*@START_MENU_TOKEN@*/10/*@END_MENU_TOKEN@*/)
            
            Spacer()
            
            Image(systemName: "pencil.slash").resizable().padding(40).frame(width: 300, height: 300, alignment: .center).background(Color.gray).clipShape(Circle()).overlay(Circle().stroke(Color.blue, lineWidth: 4)).shadow(color: Color.gray, radius: /*@START_MENU_TOKEN@*/10/*@END_MENU_TOKEN@*/).foregroundColor(/*@START_MENU_TOKEN@*/.blue/*@END_MENU_TOKEN@*/)
        }
    }
}

struct ImageView_Previews: PreviewProvider {
    static var previews: some View {
        ImageView()
    }
}
