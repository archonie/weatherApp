//
//  ContentView.swift
//  WeatherApp
//
//  Created by Doğan Ensar Papuçcuoğlu on 1.01.2025.
//

import SwiftUI

struct ContentView: View {
    
    @State private var isNight = false
    
    var body: some View {
        ZStack {
            BackgroundView(isNight: isNight)
            VStack {
                VStack {
                    CityTextView(cityName: "Cupertino, CA")
                    MainWeatherStatusView(imageName: isNight ? "moon.stars.fill" : "cloud.sun.fill",
                                          temperature: 76)
                    .animation(.none)
                }
                .padding(.bottom, 40)
                HStack(spacing: 25){
                    WeatherCard(day: "TUE",
                                degrees: 74,
                                imageName: "cloud.sun.fill")
                    WeatherCard(day: "WED",
                                degrees: 75,
                                imageName: "wind")
                    WeatherCard(day: "THU",
                                degrees: 75,
                                imageName: "sunset.fill")
                    WeatherCard(day: "FRI",
                                degrees: 75,
                                imageName: "snow")
                    WeatherCard(day: "SAT",
                                degrees: 75,
                                imageName: "cloud.rain.fill")
                }
                .padding()
                Spacer()
                Button {
                    withAnimation(.easeInOut) {
                        isNight.toggle()
                    }
                } label: {
                    WeatherButton(title: "Change Day Time",
                                  textColor: .blue,
                                  backgroundColor: .white)
                }
                Spacer()
            }
            
        }
    }
}

#Preview {
    ContentView()
}





struct CityTextView: View {
    let cityName: String

    var body: some View {
        Text(cityName)
            .font(.system(size: 32, weight: .medium))
            .foregroundStyle(Color.white)
            .padding()
        
    }
}




