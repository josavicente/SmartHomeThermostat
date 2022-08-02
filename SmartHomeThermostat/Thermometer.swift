//
//  Thermometer.swift
//  SmartHomeThermostat
//
//  Created by Josafat Vicente Pérez on 2/8/22.
//

import SwiftUI


enum Status: String {
    case heating = "HEATING"
    case cooling = "COOLING"
    case reaching = "REACHING"
}


struct Thermometer: View {
    
    private let ringSize: CGFloat = 220
    @State private var ringValue:CGFloat = 0.5
    
    @State private var degrees: CGFloat = 36
    
    var body: some View {
        ZStack{
            // MARK: Thermometer Scale
                    ThermometerScaleView()
            // MARK: Placeholder
            ThermometherPlaceHolderView()
            
            Circle()
                .inset(by:5)
                .trim(from: 0.099, to: min(ringValue, 0.75))
                .stroke(LinearGradient([Color("Temperature Ring 1"), Color("TemperatureRing 2")]), style: StrokeStyle(lineWidth: 10, lineCap: .round, lineJoin: .round))
                .frame(width: ringSize, height: ringSize)
                .rotationEffect(.degrees(90))
                .animation(.linear(duration: 1), value: ringValue)
            // MARK: Thermometer Dial
            ThermometerDialView(degrees: degrees)
            // MARK: Thermometer Summary
                ThermometerSummaryView(status: .heating, showStatus: true, temperature: 22)
        }

    }
}

struct Thermometer_Previews: PreviewProvider {
    static var previews: some View {
        Thermometer()
            .frame(maxWidth: .infinity, maxHeight: .infinity)
            .background(Color("Background"))
            .ignoresSafeArea()
    }
}
