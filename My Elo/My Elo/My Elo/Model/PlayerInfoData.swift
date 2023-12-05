//
//  PlayerInfoData.swift
//  My Elo
//
//  Created by Luís Paulo Da Costa Cavalcante on 04/12/23.
//

import Foundation

class AppDataManager: ObservableObject {
    
    static let shared = AppDataManager()
    private var service = Service()
    
    // Propriedades para armazenar informações do jogador
    @Published var storedPlayerPUUID: PlayerPUUID?
    @Published var storedPlayerInfo: PlayerInfo?
    @Published var storedPlayerRank: [PlayerRank]?
    
    private init() {
        // Construtor privado para evitar a criação de instâncias adicionais
    }

    func getPlayerPUUID() -> PlayerPUUID? {
        return storedPlayerPUUID
    }

    func getPlayerInfo() -> PlayerInfo? {
        return storedPlayerInfo
    }

    func getPlayerRank() -> [PlayerRank]? {
        return storedPlayerRank
    }
    
    func fetchData(region: String, gameName: String, tagLine: String) async {
        do {
            service.setEntrada(region: region, name: gameName, tag: tagLine)

            storedPlayerPUUID = try await service.getPlayerPUUID()
            storedPlayerInfo = try await service.getPlayerId()
            storedPlayerRank = try await service.getPlayerRank()
            
            //APIURLBuilder(playerInfo: playerInfo, playerRank: playerRank)
        } catch {
            print("Error: \(error)")
        }
    }
    
}
