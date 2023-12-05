//
//  SearchBarViewModel.swift
//  My Elo
//
//  Created by Luís Paulo Da Costa Cavalcante on 03/12/23.
//

import Foundation

class SearchBarViewModel: ObservableObject {
    private var service = Service()
    private var appDataManager = AppDataManager.shared
    
    func setEntradaUser(searchTerm: String, selectedRegion: String) async {
        let entrada = tratarUsername(gameNameWithTag: searchTerm)
        
        await appDataManager.fetchData(region: selectedRegion, gameName: entrada.gameName, tagLine: entrada.tagLine)
        
    }
    
    private func tratarUsername(gameNameWithTag: String) -> (gameName: String, tagLine: String) {
        let components = gameNameWithTag.components(separatedBy: "#")
        
        let gameName = components[0]
        let tagLine = components[1]
        
        return (gameName, tagLine)
    }
}


