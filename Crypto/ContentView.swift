//
//  ContentView.swift
//  Crypto
//
//  Created by Bilal Dallali on 17/11/2022.
//

import SwiftUI

struct ContentView: View {
    
    let crypto: CryptoCurrency
    
    var body: some View {
        HStack(spacing: 16) {
            Image(crypto.iconName)
                .resizable()
                .frame(width: 30, height: 30)
                .padding()
                .background(Color("Text2"))
                .cornerRadius(.infinity)
            VStack(alignment: .leading, spacing: 4) {
                Text(crypto.name)
                    .font(.headline)
                    .foregroundColor(Color("Text"))
                Text(crypto.symbol)
                    .font(.callout)
                    .fontWeight(.light)
                    .foregroundColor(Color("Text"))
                    .opacity(0.8)
            }
            Spacer()
            VStack {
                Text("\(String(format: "%.2f", crypto.value)) €")
                    .foregroundColor(Color("Text"))
                HStack {
                    if crypto.evolution > 0 {
                        Image(systemName: "arrow.up.right")
                            .foregroundColor(Color("AccentGreen"))
                    } else {
                        Image(systemName: "arrow.down.right")
                            .foregroundColor(Color("AccentRed"))
                    }
                    Text("\(String(format: "%.2f", crypto.evolution))%")
                        .foregroundColor(crypto.evolution > 0 ? Color("AccentGreen") : Color("AccentRed"))
                }
            }
        }
        .padding()
        .background(Color("LightGrey"))
        .cornerRadius(16)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView(crypto: cryptoList[0])
            .previewDevice("iPhone 13 Pro")
    }
}
