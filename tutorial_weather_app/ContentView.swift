//
//  ContentView.swift
//  tutorial_weather_app
//
//  Created by Tim Häggqvist Luotomäki on 29/10/2023.
//

import SwiftUI


struct ContentView: View {
    
    @State private var isNight = true
    
    var body: some View {
        ZStack {
            BackgroundView(isNight: isNight)
            VStack {
                CityTextView(cityName: "Surry Hills, NSW")
                MainWeatherView(imageName: isNight ? "moon.stars.fill" : "cloud.sun.fill", temp: 27)
                
                HStack(spacing: 20) {
                    WeatherDayView(dayOfWeek: "TUE", imageName: "cloud.sun.fill", temp: 30)
                    WeatherDayView(dayOfWeek: "WED", imageName: "sun.max.fill", temp: 29)
                    WeatherDayView(dayOfWeek: "THU", imageName: "wind", temp: 28)
                    WeatherDayView(dayOfWeek: "FRI", imageName: "cloud.bolt.rain.fill", temp: 31)
                    WeatherDayView(dayOfWeek: "SAT", imageName: "sun.max.fill", temp: 35)
                }
                Spacer()
                
                Button {
                    isNight.toggle()
                } label: {
                    TimeButton(title: "Change Time of Day", textColor: .blue, backgroundColor: .white)
                }
                
                Spacer()
            }
        }
    }
}

#Preview {
    ContentView()
}






