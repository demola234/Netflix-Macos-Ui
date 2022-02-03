//
//  WatchedCard.swift
//  NetflixUi
//
//  Created by Oluwasegun Kolawole Ademola on 08/01/2022.
//

import SwiftUI

struct WatchedCard: View {
    var body: some View {
        VStack {
            VStack {
                ZStack {
                    Image("movie3")
                        .resizable()
                        .aspectRatio(contentMode: .fill)
                        .frame(maxWidth: 210, maxHeight: 110)
                       
                    HStack {
                        
                        HStack {
                        Text("40XP")
                            .font(.system(size: 7))
                            .foregroundColor(.white)
                            
                    }
                    .frame(width: 40, height: 20)
                    .background(Color.black.opacity(0.2))
                    .clipShape(Capsule())
                    .padding()
                        .offset(y: -25)
                        Spacer()
                        
                    }
                    
                    }
                .padding(.bottom)
                VStack {
                    ZStack {
                      
                        ZStack {
                            HStack{}
                                .frame(width: 210, height: 1)
                                .background(Color.gray)
                            HStack {
                                HStack{}
                                    .frame(width: 120, height: 1)
                                    .background(Color.red)
                                Spacer()
                            }

                             Spacer()
                        }
                        .offset(y: -21)
                       
                    }
                    HStack {
                        VStack(alignment: .leading, spacing: 5) {
                        Text("Haunting of Hill House")
                                .font(.system(size: 8))
                                .foregroundColor(.white)
                            
                        Text("Horror marathan")
                                .font(.system(size: 8))
                                .foregroundColor(.gray)
                        }
                        .padding(.leading, 15)
                        .offset(y: -12)
                        
                        Spacer()
                    }

                }

            }
            .frame(width: 150, height: 150)
            .background(Color("cardcolor"))
            .cornerRadius(25.0)
            .padding(.leading, 10)
                    }
    }
}


struct WatchedCard_Previews: PreviewProvider {
    static var previews: some View {
        WatchedCard()
    }
}

