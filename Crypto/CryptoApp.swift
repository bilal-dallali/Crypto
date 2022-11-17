//
//  CryptoApp.swift
//  Crypto
//
//  Created by Bilal Dallali on 17/11/2022.
//

import SwiftUI

@main
struct CryptoApp: App {
    var body: some Scene {
        WindowGroup {
            ContentView(crypto: cryptoList[0])
        }
    }
}
