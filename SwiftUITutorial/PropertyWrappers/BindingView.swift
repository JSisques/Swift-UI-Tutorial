//
//  BindingView.swift
//  SwiftUITutorial
//
//  Created by Javier Plaza Sisqués on 24/8/21.
//

import SwiftUI

struct BindingView: View {
   
    @Binding var value: Int
    @State private var selection: Int?
    @ObservedObject var user: UserData
    
    var body: some View {
        VStack{
            Button("Suma 2"){
                value += 2
            }
            
            Button("Actualizar datos"){
                user.name = "Javi Sisqués"
                user.age = 21
            }
            
            NavigationLink(destination: EnviromentView(), tag: 1, selection: $selection){
                
                Button("Ir a Enviroment View"){
                    selection = 1
                }
            }
        }
    }
}

struct BindingView_Previews: PreviewProvider {
    static var previews: some View {
        BindingView(value: .constant(5), user: UserData())
    }
}
