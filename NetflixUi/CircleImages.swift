//
//  CircleImages.swift
//  NetflixUi
//
//  Created by Oluwasegun Kolawole Ademola on 08/01/2022.
//

import SwiftUI

struct CircleImages: View {
    var body: some View {
        Button(action: {}) {
            ZStack {
                
                HStack {
                    Image("movie2")
                        .resizable()
                        .aspectRatio(contentMode: .fill)
                        .frame(width: 50, height: 50)
                }
                    .frame(width: 50, height: 50)
                    .background(Color("selectedcolor"))
                    .clipShape(Circle())
                HStack{}
                    .frame(width: 10, height: 10)
                    .background(Color.white)
                    .clipShape(Circle())
                    .overlay(
                        Circle()
                            .stroke(Color.black)
                    )
                    .offset(x: 15, y: -21)


            }
        }
        .buttonStyle(PlainButtonStyle())
    }
}

struct CirclePlus: View {
    var body: some View {

        Button(action: {}) {
            HStack {
                    Image(systemName: "plus")
                        .font(.title)
                        .foregroundColor(.white)
                }
                    .frame(width: 50, height: 50)
                    .background(Color("selectedcolor"))
                    .clipShape(Circle())
            .padding()
        }
        .buttonStyle(PlainButtonStyle())
    }
}

struct CircleImages_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            CircleImages()
            CirclePlus()
        }
    }
}


