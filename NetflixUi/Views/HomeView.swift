//
//  HomeView.swift
//  NetflixUi
//
//  Created by Oluwasegun Kolawole Ademola on 07/01/2022.
//

import SwiftUI

struct HomeView: View {

    var screen = NSScreen.main!.visibleFrame
    @State var posts: [MovieModels] = []
    @State var currentIndex: String = ""
    @State var searchText: String = ""
    var body: some View {

        HStack {
            LeftSideView()
            
            
            CenterView()
                Spacer()
            
            
            RightSideView()
            }
        .frame(maxWidth: screen.width / 1,  maxHeight: screen.height - 60)
        .background(Color("bg"))
        .ignoresSafeArea(.all, edges: .all)
    }

}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}



