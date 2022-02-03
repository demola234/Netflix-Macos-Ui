//
//  PartyModels.swift
//  NetflixUi
//
//  Created by Oluwasegun Kolawole Ademola on 08/01/2022.
//

import SwiftUI

struct PartyCards: View {
    var body: some View {
        Button(action: {withAnimation(.spring()) {
            
        }}) {
            VStack {
                VStack(alignment: .leading) {
                    HStack {
                        HStack {
                            Image("movie1")
                                .resizable()
                                .aspectRatio(contentMode: .fill)
                            
                            
                        }
                        .frame(width: 48, height: 48, alignment: .leading)
                        .cornerRadius(10)
                        Spacer()
                        
                        SidedImges()
                        
                    }
                    .padding()
                    VStack(alignment: .leading) {
                    Text("Haunting of Hill House")
                        .font(.system(size: 12))
                        .foregroundColor(.white)
                    Text("Horror marathan")
                        .font(.system(size: 12))
                        .foregroundColor(.gray)
                    }
                    
                    .padding(.leading, 20)
                    Spacer()
                }
                .padding(.all, 5)
                .frame(width: 170, height: 150)
                .background(Color("cardcolor"))
                .cornerRadius(25.0)
            }
        }
        .buttonStyle(PlainButtonStyle())
    }
}

struct PartyCards_Previews: PreviewProvider {
    static var previews: some View {
        PartyCards()
            .preferredColorScheme(.light)
    }}


struct SidedImges: View {
    var size: CGFloat = 18
    var body: some View {
        ZStack {
            Image("movie2")
                .resizable()
                .aspectRatio(contentMode: .fill)
                .frame(width: size, height: size)
                .clipShape(Circle())
                .background(
                    Circle()
                        .stroke(Color.white)
                )
            
            Image("movie1")
                .resizable()
                .aspectRatio(contentMode: .fill)
                .frame(width: size, height: size)
                .clipShape(Circle())
                .background(
                    Circle()
                        .stroke(Color.white)
                )
                .offset(x: -10)
            
            Image("movie3")
                .resizable()
                .aspectRatio(contentMode: .fill)
                .frame(width: size, height: size)
                .clipShape(Circle())
                .background(
                    Circle()
                        .stroke(Color.white)
                )
                .offset(x: -20)
            
        }
}
}
