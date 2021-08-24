//
//  StateView.swift
//  SwiftUITutorial
//
//  Created by Javier Plaza Sisqués on 24/8/21.
//

import SwiftUI

class UserData: ObservableObject {
    
    @Published var name: String = "Javi"
    @Published var age: Int = 22
}

struct StateView: View {
    
    @State private var value = 0
    @State private var selection: Int?
    @StateObject private var user = UserData()
    
    var body: some View {
        NavigationView {
            VStack{
                
                Text("El valor actual es: \(value)")
               
                Button("Suma 1"){
                    value += 1
                }
                
                Text("Mi nombre es \(user.name) y tengo \(user.age) años")
                
                Button("Actualizar datos"){
                    user.name = "Javier Plaza"
                    user.age = 23
                }
                
                NavigationLink(destination: BindingView(value: $value, user: user), tag: 1, selection: $selection){
                    
                    Button("Ir a Binding View"){
                        selection = 1
                    }
                }
            }
            
        }.navigationTitle("State View")
    }
}

struct StateView_Previews: PreviewProvider {
    static var previews: some View {
        StateView().environmentObject(UserData())
    }
}
