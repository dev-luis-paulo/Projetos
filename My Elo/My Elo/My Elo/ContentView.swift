//
//  ContentView.swift
//  My Elo
//
//  Created by Luís Paulo Da Costa Cavalcante on 28/11/23.
//

import SwiftUI

struct ContentView: View {
    
    @StateObject private var appDataManager = AppDataManager.shared
    
    var body: some View {
        
        Image("bg-image")
            .resizable()
            .aspectRatio(contentMode: .fill)
            .edgesIgnoringSafeArea(.all)
            .overlay(
                VStack{
                    SearchBarView()
                        .padding()

                    Text(appDataManager.storedPlayerInfo?.name ?? "Teste")

                    Spacer()
                } 
            )
    }
}

#Preview {
    ContentView()
}

