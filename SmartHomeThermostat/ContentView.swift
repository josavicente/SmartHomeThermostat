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
