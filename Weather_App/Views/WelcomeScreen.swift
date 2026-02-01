//
//  WelcomeScreen.swift
//  Weather_App
//
//  Created by EmirHan DINC on 1.02.2026.
//

import SwiftUI
import CoreLocationUI

struct WelcomeScreen: View {
    @EnvironmentObject var locationManager : LocationManager
    var body: some View {
        VStack{
            VStack{
                Text("Welcome the Weather App")
                    .bold().font(.title)
                Text("Please Share Your Current Location To Get The Weather Area")
                    .padding()
            }
            .multilineTextAlignment(.center)
            .padding()
            
            LocationButton(.shareCurrentLocation){
                locationManager.requestLocation()
            }
            .cornerRadius(30)
            .symbolVariant(.fill)
            .foregroundColor(.white)
        }
        .frame(maxWidth: .infinity,maxHeight: .infinity)
    }
}

#Preview {
    WelcomeScreen()
}
