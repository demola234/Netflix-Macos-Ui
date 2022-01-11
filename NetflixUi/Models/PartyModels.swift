//
//  PartyCard.swift
//  NetflixUi
//
//  Created by Oluwasegun Kolawole Ademola on 08/01/2022.
//

import Foundation

struct PartyCard: Identifiable, Hashable {
    var id = UUID().uuidString
    var image: String
    var iconImages1: String
    var iconImages2: String
    var iconImages3: String
    var title: String
    var subtitile: String
}
