//
//  ListView.swift
//  SwiftUITutorial
//
//  Created by Javier Plaza Sisqués on 24/8/21.
//

import SwiftUI

final class ProgrammerModelData: ObservableObject{
    
    @Published var programmers = [Programmer(id: 0, name: "Javi Sisqués", languages: "Swift, Kotlin", avatar: Image(systemName: "person.crop.circle"), favourite: true), Programmer(id: 1, name: "Federico Lorca", languages: "C++, Java", avatar: Image(systemName: "person.crop.circle"), favourite: false), Programmer(id: 2, name: "Antonio Chapitos", languages: "Swift", avatar: Image(systemName: "person.crop.circle"), favourite: false), Programmer(id: 3, name: "Wachita Pérez", languages: "Kotlin", avatar: Image(systemName: "person.crop.circle"), favourite: true), Programmer(id: 4, name: "Corcosa Polela", languages: "Cobol, Ruby", avatar: Image(systemName: "person.crop.circle"), favourite: false)]
}

struct ListView: View {
    
    @EnvironmentObject var programmerModelData: ProgrammerModelData
    @State private var showFavourites = false
    
    private var filteredProgrammers: [Programmer]{
        return programmerModelData.programmers.filter() {
            programmer in
            return !showFavourites || programmer.favourite
        }
    }
    
    var body: some View {
        
        NavigationView{
            
        VStack{
            //Necesitamos la variable que haga de interruptor siempre con un $
            Toggle(isOn: $showFavourites) {
                Text("Mostrar favoritos")
            }.padding()
            
                //Indicamos que vamos a sacar los datos de programmers y que el identificador unico va a ser el campo id
                
                List(filteredProgrammers, id: \.id){
                   
                    //Hemos una especie de bucle para recorrer todo el array de forma automatica
                    
                    programmer in
                    NavigationLink(destination: ListDetailView(programmer: programmer, favourite: $programmerModelData.programmers[programmer.id].favourite)) {
                        RowView(programmer: programmer)
                    }
                }.listStyle(PlainListStyle()) //Para quitar el padding
            }.navigationTitle("Programmers")
        }
    }
}

struct ListView_Previews: PreviewProvider {
    static var previews: some View {
        ListView().environmentObject(ProgrammerModelData())
    }
}
