//
//  WeatherDayView.swift
//  tutorial_weather_app
//
//  Created by Tim Häggqvist Luotomäki on 26/12/2023.
//

import SwiftUI


struct WeatherDayView: View {
    
    var dayOfWeek: String
    var imageName: String
    var temp: Int
    
    var body: some View {
        VStack {
            Text(dayOfWeek)
                .font(.system(size: 16, weight: .medium))
                .foregroundColor(.white)
            Image(systemName: imageName)
                .symbolRenderingMode(.multicolor)
                .resizable()
//                .foregroundColor(/*@START_MENU_TOKEN@*/.blue/*@END_MENU_TOKEN@*/)
//                .foregroundStyle(.white, .blue)
                .aspectRatio(contentMode: .fit)
                .frame(width: 40, height: 40)
            Text("\(temp)°")
                .font(.system(size: 28, weight: .medium))
                .foregroundColor(.white)
        }
    }
}

#Preview {
    WeatherDayView(dayOfWeek: "Monday", imageName: "sun.fill", temp: 30)
}
