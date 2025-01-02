//
//  BackgroundView.swift
//  WeatherApp
//
//  Created by Doğan Ensar Papuçcuoğlu on 2.01.2025.
//


import SwiftUI

struct BackgroundView: View {
    var isNight: Bool
       
    var body: some View {
//        LinearGradient(gradient: Gradient(colors: isNight ? [.black, .gray] : [.blue, .lightBlue]),
//                       startPoint: .topLeading,
//                       endPoint: .bottomTrailing)
//        .ignoresSafeArea()
        
        ContainerRelativeShape()
            .fill(isNight ? Color.black.gradient :  Color.blue.gradient)
            .ignoresSafeArea()
    }
}
