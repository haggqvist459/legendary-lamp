//
//  TimeButton.swift
//  tutorial_weather_app
//
//  Created by Tim Häggqvist Luotomäki on 12/11/2023.
//

import SwiftUI

struct TimeButton: View {
    
    var title: String
    var textColor: Color
    var backgroundColor: Color
    
    
    var body: some View
    {
        Text (title)
            .frame(width: 280, height: 50)
            .background(backgroundColor)
            .foregroundColor(textColor)
            .font(.system(size: 20, weight: .bold, design: .default))
            .cornerRadius(10)
    }
}

#Preview {
    TimeButton(title: "Button Title", textColor: .white, backgroundColor: .blue)
}
