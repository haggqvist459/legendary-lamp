//
//  CityTextView.swift
//  tutorial_weather_app
//
//  Created by Tim Häggqvist Luotomäki on 26/12/2023.
//

import SwiftUI

struct CityTextView: View {
    
    var cityName: String
    
    var body: some View {
        Text(cityName)
            .font(.system(size: 32, weight: .medium, design: .default))
            .foregroundColor(.white)
            .padding()
    }
}


#Preview {
    CityTextView(cityName: "Sydney")
}
