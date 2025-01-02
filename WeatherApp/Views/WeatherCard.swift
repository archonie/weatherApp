//
//  WeatherCard.swift
//  WeatherApp
//
//  Created by Doğan Ensar Papuçcuoğlu on 1.01.2025.
//

import SwiftUI

struct WeatherCard: View {
    
    let day: String
    let degrees: Int
    let imageName: String
    
    var body: some View {
        VStack(spacing: 10) {
            Text(day)
                .font(.system(size: 16, weight: .medium))
                .foregroundStyle(.white)
            Image(systemName: imageName)
                .symbolRenderingMode(.multicolor)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 40, height: 40)
            Text("\(degrees)°")
                .font(.system(size: 28, weight: .medium))
                .foregroundStyle(.white)
        }
    }
}

#Preview {
            WeatherCard(day: "TUE", degrees: 76, imageName: "sun.max.fill")
                
}
