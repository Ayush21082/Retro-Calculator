//
//  RetroCalcUI.swift
//  Dynamic Island
//
//  Created by Ayush Singh on 26/12/22.
//

import SwiftUI

struct RetroCalcUI: View {

    @EnvironmentObject private var globalString: GlobalString
    var body: some View {
        VStack {
            HStack{
                Text("CASIO")
                    .fontWeight(.heavy)
                    .font(.system(size: 35, weight: .bold, design: .monospaced))
                    .foregroundColor(.black)
                    .padding(.leading)
                
                Spacer()
                RetroButton(title: "", height: 20, width: 20)
                RetroButton(title: "", height: 20, width: 20)
                RetroButton(title: "", height: 20, width: 20)
                RetroButton(title: "", height: 20, width: 20)
                    .padding(.trailing)
                
                
            }
            HStack {
                ZStack{
                    
                    RoundedRectangle(cornerRadius: 5)
                        .stroke(Color.black, lineWidth: 5)
                        .background(.black)
                        .frame(width: .infinity,height: .infinity)
                        .offset(x: 6,y: 6)
                    RoundedRectangle(cornerRadius: 5)
                        .stroke(Color.black, lineWidth: 5)
                        .background(.white)
                        .frame(width: .infinity,height: .infinity)
                    HStack {
                        Spacer()
                        VStack {
//                            Text(globalString.calculation)
//                                .fontWeight(.heavy)
//                                .font(.system(size: 20, weight: .bold, design: .monospaced))
//                                .foregroundColor(.gray)
//                                .multilineTextAlignment(.trailing)
//                                .padding([.leading, .bottom, .trailing])
                            Text(globalString.displayValue)
                                .fontWeight(.heavy)
                                .font(.system(size: 35, weight: .bold, design: .monospaced))
                                .foregroundColor(.black)
                                .multilineTextAlignment(.trailing)
                                .padding(.horizontal)
                        }
                    }
                }
                
            }
            .padding([.leading, .bottom, .trailing])
            Spacer()
            HStack {
                
                RetroButton(title: "AC", height: 70, width: 70, fontColor: .teal)
                
                
                RetroButton(title: "+/-", height: 70, width: 70, fontColor: .teal)
                    .padding(.leading)
                RetroButton(title: "%", height: 70, width: 70, fontColor: .teal)
                    .padding(.leading)
                RetroButton(title: "/", height: 70, width: 70, fontColor: .orange)
                    .padding(.leading)
            }
            .padding(.bottom)
            HStack {
                RetroButton(title: "7", height: 70, width: 70)
                RetroButton(title: "8", height: 70, width: 70)
                    .padding(.leading)
                RetroButton(title: "9", height: 70, width: 70)
                    .padding(.leading)
                RetroButton(title: "X", height: 70, width: 70, fontColor: .orange)
                    .padding(.leading)
            }
            .padding(.bottom)
            HStack {
                RetroButton(title: "4", height: 70, width: 70)
                RetroButton(title: "5", height: 70, width: 70)
                    .padding(.leading)
                RetroButton(title: "6", height: 70, width: 70)
                    .padding(.leading)
                RetroButton(title: "-", height: 70, width: 70, fontColor: .orange)
                    .padding(.leading)
            }
            .padding(.bottom)
            HStack {
                RetroButton(title: "1", height: 70, width: 70)
                RetroButton(title: "2", height: 70, width: 70)
                    .padding(.leading)
                RetroButton(title: "3", height: 70, width: 70)
                    .padding(.leading)
                RetroButton(title: "+", height: 70, width: 70, fontColor: .orange)
                    .padding(.leading)
            }
            .padding(.bottom)
            
            HStack {
                RetroButton(title: "0", height: 70, width: 165)
                RetroButton(title: ".", height: 70, width: 70)
                    .padding(.leading)
                RetroButton(title: "=", height: 70, width: 70, fontColor: .orange)
                    .padding(.leading)
            }
            .padding(.bottom)
        }.background(Color(hue: 1.0, saturation: 0.0, brightness: 0.937))
        
    }
}

struct RetroCalcUI_Previews: PreviewProvider {
    static var previews: some View {
        RetroCalcUI()
    }
}

