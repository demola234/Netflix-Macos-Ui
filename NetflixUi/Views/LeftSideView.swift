//
//  RightSide.swift
//  NetflixUi
//
//  Created by Oluwasegun Kolawole Ademola on 07/01/2022.
//

import SwiftUI


struct RightSide: View {
    var screen = NSScreen.main!.visibleFrame
    var title: String = "Browse"
    var text: String = ""
    
    @State var selected = "Browse"
    @Namespace var animation
    
    var body: some View {
        VStack {
            VStack(alignment: .leading, spacing:  10) {
                ZStack {
                    HStack {
                        Image("netflixlogo")
                            .resizable()
                            .aspectRatio(contentMode: .fill)
                            .frame(width: 75, height: 25)
                            .padding(.top, 15)
                            .padding()
                    }
                }
                
                HStack {
                    Text("Menu")
                        .font(.system(size: 8))
                        .foregroundColor(.gray)
                }
                .padding(.bottom, 5.0)
                .padding(.leading, 10)
                
                VStack (alignment: .leading) {
                    TabButtons(title: "Browse", icon: "square.and.pencil", selected: $selected, animation: animation)
                    TabButtons(title: "Watchlist", icon: "bolt.heart", selected: $selected, animation: animation)
                    TabButtons(title: "Coming soon", icon: "calendar.circle", selected: $selected, animation: animation)
                    
                    HStack {
                        Text("Social")
                            .font(.system(size: 8))
                            .foregroundColor(.gray)
                    }
                    .padding(.top, 5.0)
                    .padding(.bottom, 5.0)
                    .padding(.leading, 10)
                    
                    
                    TabButtons(title: "Friends", icon: "person", selected: $selected, animation: animation)
                    TabButtons(title: "Partol", icon: "person.3", selected: $selected, animation: animation)
                    
                    HStack {
                        Text("General")
                            .font(.system(size: 8))
                            .foregroundColor(.gray)
                    }
                    .padding(.top, 5.0)
                    .padding(.bottom, 5.0)
                    .padding(.leading, 10)
                    
                    
                    TabButtons(title: "Settings", icon: "gearshape", selected: $selected, animation: animation)
                    TabButtons(title: "Log out", icon: "square.and.arrow.up", selected: $selected, animation: animation)
                    
                }
                
                
                
                Spacer()
                
                Divider()
                    .padding()
                
                Spacer()
                ZStack {
                    
                    VStack {
                        Text("Popcorn Addict")
                            .font(.caption2)
                            .foregroundColor(Color.white)
                        Text("416 Viewing time")
                            .font(.system(size: 8))
                        
                        Button(action: {}, label: {
                            HStack {
                                Text("View Challenges")
                                    .font(.system(size: 8))
                                    .padding(.init(top: 5, leading: 5, bottom: 5, trailing: 5))
                            }
                            .frame(height: 30)
                            .background(Color("bg"))
                            .cornerRadius(10)
                            
                        })
                        .shadow(color: .white.opacity(0.1), radius: 5, x: 0.0, y: -2)
                        .buttonStyle(PlainButtonStyle())
                    }
                    .frame(width: 100, height: 100)
                    .background(Color("bar"))
                    .cornerRadius(20)
                    VStack {
                        
                    }
                    .frame(width: 30, height: 30)
                    .background(Color("stackcolor"))
                    .cornerRadius(5)
                    .offset(y: -50)
                }
                .frame(width: 100, height: 100)
                .shadow(color: .white.opacity(0.1), radius: 2, x: 0.0, y: -2)
                .padding(.leading, 10)
                
                
                
                Spacer()
            }
            Spacer()
        }
        .frame(maxWidth: (screen.width / 2) / 6, maxHeight: .infinity)
        .background(Color("bar"))
    }
}

struct RightSide_Previews: PreviewProvider {
    static var previews: some View {
        RightSide()
    }
}
