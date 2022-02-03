//
//  RightSideView.swift
//  NetflixUi
//
//  Created by Oluwasegun Kolawole Ademola on 09/01/2022.
//

import SwiftUI


struct RightSideView: View {
    var screen = NSScreen.main!.visibleFrame
    
    var body: some View {
        VStack {
            CirclePlus()
                .padding(.top, 70)
            ScrollView(.vertical, showsIndicators: false) {
                ForEach(1..<6) { i in
                    CircleImages()
                        .padding(.bottom, 8)
                }
            }
            Spacer()
        }
        .frame(maxWidth: (screen.width / 3) / 8, maxHeight: .infinity)
        .background(Color("bar"))
    }
}

struct RightSideView_Previews: PreviewProvider {
    static var previews: some View {
        RightSideView()
    }
}
