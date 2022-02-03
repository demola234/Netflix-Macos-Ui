//
//  CenterView.swift
//  NetflixUi
//
//  Created by Oluwasegun Kolawole Ademola on 08/01/2022.
//

import SwiftUI


struct CenterView: View {
    let gradient = LinearGradient(gradient: .init(colors: [Color("gradient1"), Color("gradient2")]), startPoint: .topLeading, endPoint: .bottomTrailing)
    @State var searchText: String = ""
    var body: some View {
        VStack (alignment: .leading) {
            HStack(spacing: 20) {
                HStack(spacing: 5.0) {
                    Button(action: {}) {
                        Image(systemName: "chevron.left")
                            .font(.caption2)
                            .foregroundColor(.white)
                    }
                    .buttonStyle(PlainButtonStyle())
                    Button(action: {}) {
                        Image(systemName: "chevron.right")
                            .font(.caption2)
                            .foregroundColor(.gray)                        }
                        .buttonStyle(PlainButtonStyle())
                    
                }
                .padding()
                Spacer(minLength: 0)
                HStack{
                    Image(systemName: "magnifyingglass")
                        .padding(.horizontal, 8)
                        .padding(.vertical, 8)
                    TextField("Search", text: $searchText)
                        .textFieldStyle(PlainTextFieldStyle())
                        .frame(width: 150)
                        .padding(.horizontal, 20)
                        .padding(.vertical, 8)
                    
                    Image(systemName: "mic")
                        .padding(.horizontal, 8)
                        .padding(.vertical, 8)
                }
                .overlay(
                    RoundedRectangle(cornerRadius: 30)
                        .stroke(Color.white, style: StrokeStyle())
                )
                .frame(width: 250)
                Spacer()
                HStack {
                    Image(systemName: "bell")
                    Image(systemName: "bell")
                    Image("user")
                        .resizable()
                        .aspectRatio(contentMode: .fill)
                        .frame(width: 30, height: 30)
                        .clipShape(Circle())
                        .padding(6)
                        .background(
                            Circle()
                                .stroke(gradient)
                        )
                        .clipShape(Circle())
                    VStack(alignment: .leading) {
                        Text("Ademoola O.")
                        Text("Level 12")
                    }
                }
                
                
            }
            .frame(maxWidth: .infinity, maxHeight: 30)
            .padding(.bottom, 20)
            
            TopBanner()
                .cornerRadius(30)
                .padding(.horizontal, 40)
                .padding(.bottom, 20)
            
            
            HStack {
                Text("Parties")
                    .font(.system(size: 15))
                    .fontWeight(.medium)
            }
            .padding(.horizontal, 20)
            .padding(.leading, 20)
            .padding(.bottom, 5)
            ScrollView(.horizontal, showsIndicators: false) {
                HStack {
                    ForEach(1..<5) { i in
                        PartyCards()
                        
                    }
                }
                .padding(.leading, 25)
            }
            
            HStack {
                Text("Continue Watching")
                    .font(.system(size: 15))
                    .fontWeight(.medium)
                    .padding(.top, 30)
            }
            .padding(.horizontal, 20)
            .padding(.leading, 20)
            .padding(.bottom, 5)
            
            HStack {
                ScrollView(.horizontal, showsIndicators: false) {
                    HStack {
                        ForEach(1..<10) { i in
                            WatchedCard()
                            
                        }
                    }

                    .padding(.leading, 25)
                }
            }

        }
        .ignoresSafeArea(.all)
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        .padding(.top, 30)
    }
}


struct CenterView_Previews: PreviewProvider {
    static var previews: some View {
        CenterView()
    }
}
