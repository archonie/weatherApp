//
//  MainWeatherStatusView.swift
//  WeatherApp
//
//  Created by Doğan Ensar Papuçcuoğlu on 2.01.2025.
//


import SwiftUI

struct MainWeatherStatusView: View {
    let imageName: String
    let temperature: Int
    
    var body: some View {
        VStack(spacing: 10) {
            Image(systemName: imageName)
                .renderingMode(.original)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 180, height: 180)
            Text("\(temperature)°")
                .font(.system(size: 70, weight: .medium))
                .foregroundStyle(Color.white)
        }
    }
}