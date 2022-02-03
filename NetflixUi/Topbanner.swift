//
//  Topbanner.swift
//  NetflixUi
//
//  Created by Oluwasegun Kolawole Ademola on 08/01/2022.
//

import SwiftUI

struct TopBanner: View {
    @State var posts: [MovieModels] = []
    @State var currentIndex: String = ""
    
    var body: some View {
        HStack {
            VStack {
                ZStack {
                    
                    Image("movie3")
                        .resizable()
                        .aspectRatio(contentMode: .fill)
                        .frame(maxWidth: .infinity, maxHeight: 260)
                    VStack {
                        HStack {
                        HStack {
                            HStack {
                                Text("40XP")
                                    .font(.system(size: 7))
                                    .foregroundColor(.white)
                                    
                            }
                            .frame(width: 40, height: 20)
                            .background(Color.black.opacity(0.2))
                            .clipShape(Capsule())
                            
                            EmbededImages()
                            Text("+5 friends are watching")
                                .font(.system(size: 7))
                                .offset(x: -40)
                                
                        }
                            Spacer()
                        
                        }
                        .padding()
                        .offset(y: 40)
                        Spacer()
                        HStack {
                            Text("Social Network")
                                .font(.title)
                                .bold()
                            
                            Spacer()
                        }
                        .padding(.horizontal, 15)
                        .padding(.bottom, 1)
                        HStack {
                            Text("95% Match")
                                .font(.system(size: 9))
                                .foregroundColor(.white.opacity(0.8))
                            Spacer()
                        }
                        .padding(.horizontal, 15)
                        HStack {
                            Button(action: {}, label: {
                                Text("Watch")
                                    .font(.system(size: 12))
                                    .foregroundColor(.white.opacity(0.8))
                            })
                            .frame(width: 70, height: 30)
                            .background(Color.red)
                            .buttonStyle(PlainButtonStyle())
                            .cornerRadius(5)
                            .shadow(color: .red, radius: 5, x: 0.0, y: -2)
                            
                            Button(action: {}, label: {
                                Text("+")
                                    .font(.system(size: 15))
                                    .foregroundColor(.white.opacity(0.8))
                            })
                            .frame(width: 30, height: 30)
                            .background(Color.white.opacity(0.2))
                            .buttonStyle(PlainButtonStyle())
                            .cornerRadius(5)
                            Spacer()
                        }
                        
                        .padding(.vertical, 10)
                        .padding(.horizontal, 15)
                        Spacer()
                        
                    }
                    
                }
            }
        }
        .frame(maxWidth: .infinity, maxHeight: 200)
        .background(Color.white)
    }
}

struct TopBanner_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}


struct EmbededImages: View {
    var body: some View {
        HStack {
            Image("movie2")
                .resizable()
                .aspectRatio(contentMode: .fill)
                .frame(width: 22, height: 22)
                .clipShape(Circle())
                .background(
                    Circle()
                        .stroke(Color.white)
                )
            
            Image("movie1")
                .resizable()
                .aspectRatio(contentMode: .fill)
                .frame(width: 22, height: 22)
                .clipShape(Circle())
                .background(
                    Circle()
                        .stroke(Color.white)
                ).offset(x: -20)
            
            Image("movie3")
                .resizable()
                .aspectRatio(contentMode: .fill)
                .frame(width: 22, height: 22)
                .clipShape(Circle())
                .background(
                    Circle()
                        .stroke(Color.white)
                )
                .offset(x: -40)
        }
        
            
        }
    }

