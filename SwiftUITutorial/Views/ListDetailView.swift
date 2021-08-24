//
//  ListDetailView.swift
//  SwiftUITutorial
//
//  Created by Javier Plaza Sisqués on 24/8/21.
//

import SwiftUI

struct ListDetailView: View {
    
    var programmer: Programmer
    @Binding var favourite: Bool
    
    var body: some View {
        VStack{
            programmer.avatar
                .resizable()
                .frame(width: 200, height: 200)
                .clipShape(/*@START_MENU_TOKEN@*/Circle()/*@END_MENU_TOKEN@*/)
                .overlay(Circle().stroke(Color.black, lineWidth: 4))
                .shadow(color: .gray, radius: 5)
            
            HStack {
                Text(programmer.name).font(.largeTitle)
                Button{
                    favourite.toggle()
                } label: {
                    if favourite{
                        Image(systemName: "star.fill")
                            .resizable()
                            .frame(width: 24, height: 24, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/).foregroundColor(.yellow)
                    } else{
                        Image(systemName: "star")
                            .resizable()
                            .frame(width: 24, height: 24, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/).foregroundColor(.gray)
                    }
                }
            }
            Text(programmer.languages).font(.title)
            Spacer()
        }
    }
}

struct ListDetailView_Previews: PreviewProvider {
    static var previews: some View {
        ListDetailView(programmer: Programmer(id: 1, name: "Javi Sisqués", languages: "Swift, Kotlin", avatar: Image(systemName: "person.crop.circle"), favourite: true), favourite: .constant(false))
    }
}
