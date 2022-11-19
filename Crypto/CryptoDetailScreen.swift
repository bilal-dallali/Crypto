//
//  CryptoDetailScreen.swift
//  Crypto
//
//  Created by Bilal Dallali on 19/11/2022.
//

import SwiftUI

struct CryptoDetailScreen: View {
    
    let crypto: CryptoCurrency
    
    @State var quantity: Float = 1
    
    var body: some View {
        VStack {
            HStack {
                Text(crypto.name)
                    .foregroundColor(Color("Text"))
                    .font(.title)
                    .fontWeight(.bold)
                    .padding(.vertical, 24)
                    .padding(.horizontal, 16)
                Spacer()
                Image(crypto.iconName)
                    .resizable()
                    .frame(width: 30, height: 30)
                    .padding(8)
                    .background(Color("Text2"))
                    .cornerRadius(.infinity)
            }
            VStack(spacing: 16) {
                Text("\(String(format: "%.2f", quantity * crypto.value))")
                    .foregroundColor(Color("Text"))
                    .font(.system(size: 32, weight: .bold))
                HStack {
                    Text("\(crypto.evolution > 0 ? "+" : "")\(String(format: "%.2f", crypto.evolution)) %")
                    if crypto.evolution > 0 {
                        Image(systemName: "arrow.up.right")
                    } else {
                        Image(systemName: "arrow.down.right")
                    }
                }
                .foregroundColor(crypto.evolution > 0 ? Color("AccentGreen") : Color("AccentRed"))
                Text("Quantité : \(quantity)")
                    .foregroundColor(Color("Text2"))
            }
            
            Spacer()
            HStack  {
                Button {
                    quantity = quantity - 1
                } label: {
                    Text("Vendre")
                        .foregroundColor(Color(.white))
                        .font(.headline)
                        .frame(maxWidth: .infinity)
                        .padding()
                        .background(Color("Text2"))
                        .cornerRadius(10)
                        
                }
                Button {
                    quantity = quantity + 1
                } label: {
                    Text("Acheter")
                        .foregroundColor(Color("Background"))
                        .font(.headline)
                        .frame(maxWidth: .infinity)
                        .padding()
                        .background(Color("AccentYellow"))
                        .cornerRadius(10)
                        
                }

            }
        }
        .padding()
        .background(Color("Background"))
        .navigationBarTitleDisplayMode(.inline)
    }
}

struct CryptoDetailScreen_Previews: PreviewProvider {
    static var previews: some View {
        CryptoDetailScreen(crypto: cryptoList[0])
    }
}
