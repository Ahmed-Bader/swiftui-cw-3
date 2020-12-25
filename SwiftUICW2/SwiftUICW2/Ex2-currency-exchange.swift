//
//  ContentView.swift
//  SwiftUICW2
//
//  Created by Omar Alibrahim on 12/19/20.
//  Copyright: Kuwait Codes 2020 code.kw
import SwiftUI

struct Exercise2: View {
    @State var kwd = ""
    
    var body: some View {
        ZStack {
            VStack{
                Spacer()
                Image("currency")
                    .resizable()
                    .scaledToFit()
                    .ignoresSafeArea()
                    .offset(y: 60.0)
            }
            ZStack {
                VStack {
                    Text("محول العملات العجيب!")
                        .font(.largeTitle)
                        .bold()
                        .multilineTextAlignment(.center)
                        .padding()
                    
                    TextField("العملة بالدينار", text: $kwd)
                        .font(.largeTitle)
                        .multilineTextAlignment(.center)
                        .keyboardType(.decimalPad)

                    VStack(spacing: 30)
                    {
                        HStack(spacing: 40)
                        {
                            Image("us")
                                .resizable()
                                .scaledToFit()
                                .frame(width: 50)
                            
                            let val = Double(kwd) ?? 0
                            let usd = val * 3.28
                            Text("$\(usd)")
                        }
                        
                        HStack(spacing: 40){
                            Image("uk")
                                .resizable()
                                .scaledToFit()
                                .frame(width: 50)
                            
                            let val = Double(kwd) ?? 0
                            let pnd = val * 2.46
                            Text("£\(pnd)")
                        }
                        HStack(spacing: 40){
                            Image("eu")
                                .resizable()
                                .scaledToFit()
                                .frame(width: 50)
                            
                            let val = Double(kwd) ?? 0
                            let eur = val * 2.70
                            Text("€\(eur)")
                        }
                    }.padding(.top, 50)
                    Spacer()
                }
            }.padding()
        }
    }
}

struct Exercise2_Previews: PreviewProvider {
    static var previews: some View {
        Exercise2()
    }
}
