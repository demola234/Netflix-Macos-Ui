//
//  TabButton.swift
//  NetflixUi
//
//  Created by Oluwasegun Kolawole Ademola on 07/01/2022.
//

import SwiftUI

struct TabButtons: View {
    var title: String
    var icon: String
    
    @Binding var selected: String
    var animation: Namespace.ID
    
    var body: some View {
        Button(action: {
            withAnimation(.spring()){
                selected = title
            }
            
        }, label: {
            ZStack {
                Capsule()
                    .fill(Color.clear)
                    .matchedGeometryEffect(id: "Tab", in: animation)
                
                if selected == title {
                    Capsule()
                        .fill(Color("selectedcolor"))
                        .matchedGeometryEffect(id: "Tab", in: animation)
                }
            }
            .frame(width: 2, height: 25)
            .padding(.trailing, 5)

            HStack {
            Image(systemName: icon)
                .font(.system(size: 13))
                .foregroundColor(selected == title ? Color("selectedcolor") : Color.gray)
            
            Text(title)
                .font(.caption)
                .fontWeight(.semibold)
                .foregroundColor(selected == title ? Color.white : Color.gray)
            }
            .padding(.trailing, 2)
        })
        .buttonStyle(PlainButtonStyle())
    }
}


struct TabButtons_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }}

