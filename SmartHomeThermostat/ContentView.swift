//
//  ContentView.swift
//  SmartHomeThermostat
//
//  Created by Josafat Vicente Pérez on 2/8/22.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            NavigationView{
                ZStack{
                    Color("Background")
                        .ignoresSafeArea()
//                    ScrollView{
                        VStack(spacing: 0){
                            //MARK: Thermometer
                            Thermometer()
                                .padding(.top, 30)
                                .padding(.bottom, 60)
                            // MARK: Smart Systems
                            HStack(spacing: 20){
                                // MARK: Humidity Card
                                ClimateCard(iconName: "humidity.fill", index: "Inside humidity", measure: "49%")
                                // MARK: Temperature Card
                                 ClimateCard(iconName: "thermometer", index: "Outside temp.", measure: "-10°")
                            }
                        }
//                    }
                }
                .navigationTitle("Thermostat")
                .navigationBarTitleDisplayMode(.inline)
            }.navigationViewStyle(.stack)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .preferredColorScheme(.dark)
    }
}
