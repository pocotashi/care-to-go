//
//  Course.swift
//  cpr
//
//  Created by Chosum Tashi on 1/29/22.
//

import Foundation
import SwiftUI

struct Course: Identifiable, Hashable {
    var id = UUID()
    
    let name: String
    let price: String
    let booked: Bool
    let info: String
    
    var imageName: String
    var image: Image {
        Image(imageName)
    }
   

    
}
