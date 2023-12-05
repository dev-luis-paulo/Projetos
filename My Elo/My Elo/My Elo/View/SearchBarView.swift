//
//  SearchBarView.swift
//  My Elo
//
//  Created by Luís Paulo Da Costa Cavalcante on 03/12/23.
//

import SwiftUI

struct SearchBarView: View {
    
    @StateObject var viewModel = SearchBarViewModel()
    
    @State var searchTerm: String = ""
    @State var selectedRegion: String = "BR1"
    
    let regions = ["BR1", "EUN1", "EUW1", "JP1", "KR", "LA1", "LA2", "NA1", "OC1", "PH2", "RU", "SG2", "TH2", "TR1", "TW2", "VN2"]
    
    var body: some View {
        HStack {
            Menu {
                ForEach(regions, id: \.self) { region in
                    Button(action: {
                        selectedRegion = region
                    }) {
                        Text(region)
                    }
                }
            } label: {
                Text("\(selectedRegion)")
            }
            .padding(.leading, 12)
            
            Divider()
                .frame(height: 20)
                .background(Color.accentColor)
            
            TextField("Search with username#tag", text: $searchTerm)
                .autocapitalization(.none)
            
            Button(action: {
                Task {
                    await viewModel.setEntradaUser(searchTerm: searchTerm, selectedRegion: selectedRegion)
                }
            }) {
                Image(systemName: "magnifyingglass")
                    .renderingMode(.original)
            }
            .clipShape(Circle())
            .padding(.trailing, 10)
        }
        .padding()
        .background(
            RoundedRectangle(cornerRadius: 25)
                .fill(Color("CorDeFundo"))
                .shadow(color: .accentColor.opacity(0.15), radius: 10)
        )
        .padding()
    }
    
}

#Preview {
    SearchBarView()
}


