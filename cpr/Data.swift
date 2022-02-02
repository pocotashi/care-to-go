//
//  Data.swift
//  cpr
//
//  Created by Chosum Tashi on 1/29/22.
//

import Foundation
import SwiftUI

func data() -> [Course] {
    let courses = [
        Course(
            name: "Cpr & First Aid",
            price: "120",
            booked: false,
            info: "lorem ipsum kola beard",
            imageName: "cpr"
        ),
        Course(
            name: "Lifeguarding",
            price: "400",
            booked: false,
            info: "lorem ipsum kola beard",
            imageName: "lifeguard"
        ),
        Course(name: "Water Safety Instructor",
            price: "80",
            booked: false,
            info: "lorem ipsum kola beard",
            imageName: "watersafe"),
        Course(
            name: "Wilderness First Aid",
            price: "100",
            booked: false,
            info: "lorem ipsum kola beard",
            imageName: "wildfirstaid")
    ]
    
    return courses
}
