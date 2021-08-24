//
//  ListView.swift
//  SwiftUITutorial
//
//  Created by Javier Plaza Sisqués on 24/8/21.
//

import SwiftUI

private let programmers = [Programmer(id: 1, name: "Javi Sisqués", languages: "Swift, Kotlin", avatar: Image(systemName: "person.crop.circle")), Programmer(id: 2, name: "Federico Lorca", languages: "C++, Java", avatar: Image(systemName: "person.crop.circle")), Programmer(id: 3, name: "Antonio Chapitos", languages: "Swift", avatar: Image(systemName: "person.crop.circle")), Programmer(id: 4, name: "Wachita Pérez", languages: "Kotlin", avatar: Image(systemName: "person.crop.circle")), Programmer(id: 5, name: "Corcosa Polela", languages: "Cobol, Ruby", avatar: Image(systemName: "person.crop.circle"))]

struct ListView: View {
    var body: some View {
        
        //Indicamos que vamos a sacar los datos de programmers y que el identificador unico va a ser el campo id
        
        List(programmers, id: \.id){
           
            //Hemos una especie de bucle para recorrer todo el array de forma automatica
            
            programmer in
            RowView(programmer: programmer)
        }
    }
}

struct ListView_Previews: PreviewProvider {
    static var previews: some View {
        ListView()
    }
}
