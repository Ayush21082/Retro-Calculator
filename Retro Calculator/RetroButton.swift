//
//  RetroButton.swift
//  Dynamic Island
//
//  Created by Ayush Singh on 26/12/22.
//

import SwiftUI



struct RetroButton: View {
    let title: String
    let height: CGFloat
    let width: CGFloat
    @State var fontColor:Color = .black

    @State private var firstNum = "0"
    @State private var secondNum = "0"
    @State private var operators = ""
    
    @EnvironmentObject private var globalString: GlobalString
    
    public func buttonTapped(value: String) {

        switch value {
        case "AC" :
            globalString.displayValue = "0"
            firstNum = "0"
            secondNum = "0"
            operators = ""
            globalString.calculation = ""
        case "=":
            
            let expression =  NSExpression(format:"\(globalString.calculation)")
            guard let value = expression.expressionValue(with: nil, context: nil) as? Int else {return}
            globalString.displayValue = "\(value)"
        case "+":
            globalString.calculation += value+"0"
            globalString.displayValue = "0"
        case "-":
            globalString.calculation += value+"0"
            globalString.displayValue = "0"
        case "X":
            globalString.calculation += "*0"
            globalString.displayValue = "0"
        case "/":
            globalString.calculation += "/0"
            globalString.displayValue = "0"
        case "%":
            globalString.calculation += "-0"
            globalString.displayValue = "0"
        default:
            if globalString.displayValue == "0" {
                globalString.displayValue = value
                globalString.calculation += value
            }else{
                globalString.calculation += value
                globalString.displayValue += value
            }
               
        }
        
        print(globalString.calculation)

    }

    var body: some View {
        Button(action: {
            // button action here
            let impactMed = UIImpactFeedbackGenerator(style: .medium)
                impactMed.impactOccurred()
                buttonTapped(value: title)
            
        }) {
            ZStack {
                RoundedRectangle(cornerRadius: 5)
                    .stroke(Color.black, lineWidth: 5)
                    .background(.black)
                    .frame(width: width,height: height)
                    .offset(x: 4,y: 4)
                
                Text(title)
                    .fontWeight(.heavy)
                    .frame(width: width, height: height)
                    .font(.system(size: 25, weight: .bold, design: .rounded))
                    .foregroundColor(fontColor)
                    .background(Color.white)
                    .cornerRadius(10)
                    .overlay(
                        RoundedRectangle(cornerRadius: 5)
                            .stroke(Color.black, lineWidth: 5)
                    )
                
                
                
            }
        }.buttonStyle(GradientButtonStyle())
        
    }
}

struct RetroButton_Previews: PreviewProvider {
    static var previews: some View {
        RetroButton(title: "7", height: 80, width: 80, fontColor: .yellow)
    }
}
struct GradientButtonStyle: ButtonStyle {
    func makeBody(configuration: Self.Configuration) -> some View {
        configuration.label
            .scaleEffect(configuration.isPressed ? 0.9 : 1.0)
    }
}
class GlobalString: ObservableObject {

    
    @Published var displayValue: String
    @Published var calculation: String

    init(displayValue: String) {
        self.displayValue = displayValue
        self.calculation = displayValue
        
    }
}
