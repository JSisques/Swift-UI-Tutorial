//
//  RowView.swift
//  SwiftUITutorial
//
//  Created by Javier Plaza Sisqués on 24/8/21.
//

import SwiftUI

struct RowView: View {
    
    var programmer: Programmer
    
    var body: some View {
        HStack{
            programmer.avatar.resizable().frame(width: 40, height: 40).padding(10)
            
            VStack(alignment: .leading){
                Text(programmer.name)
                    .font(.title)
                Text(programmer.languages)
                    .font(.subheadline)
            }
            
            Spacer()
            
            //Mostramos la estrella si es favorito
            if programmer.favourite{
                Image(systemName: "star.fill").foregroundColor(.yellow).padding(10)
            }
            
        }
    }
}

struct RowView_Previews: PreviewProvider {
    static var previews: some View {
        RowView(programmer: Programmer(id: 1, name: "Javi Sisqués", languages: "Swift, Kotlin", avatar: Image(systemName: "person.crop.circle"), favourite: true)).previewLayout(.fixed(width: 400, height: 60))
    }
}

