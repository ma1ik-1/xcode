//
//  Movie.swift
//  Project
//
//  Created by Malik on 25/05/2023.
//

import Foundation
import SwiftUI
import CoreLocation

struct Movie: Hashable, Codable {
    var Title: String
    var Year: String
    var Rated: String
    var Released: String
    var Poster: String
    var Runtime: String
    var Plot: String
    
    var image: Image {
        Image(Poster)
            .resizable()
    }
}
