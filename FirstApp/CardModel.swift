//
//  CardModel.swift
//  FirstApp
//
//  Created by 刘铭 on 2023/1/1.
//

import SwiftUI

struct Card: Identifiable{
    var id = UUID()
    var title: String
    var headline: String
    var imageName: String
    var callToAction: String
    var message: String
    var gradientColors: [Color]
}
