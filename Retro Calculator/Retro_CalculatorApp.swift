//
//  Retro_CalculatorApp.swift
//  Retro Calculator
//
//  Created by Ayush Singh on 26/12/22.
//

import SwiftUI

@main
struct Retro_CalculatorApp: App {
    var body: some Scene {
        WindowGroup {
            RetroCalcUI()
            .environmentObject(GlobalString(displayValue: "0"))
        }
    }
}
