//
//  WeatherButton.swift
//  WeatherApp
//
//  Created by Doğan Ensar Papuçcuoğlu on 2.01.2025.
//


import SwiftUI

struct WeatherButton: View {
    let title: String
    let textColor: Color
    let backgroundColor: Color
    
    var body: some View {
        Text("Change Day Time")
            .frame(width: 280, height: 50)
            .background(backgroundColor.gradient)
            .foregroundStyle(textColor)
            .font(.system(size: 20, weight: .bold))
            .cornerRadius(10)
        
    }
}
