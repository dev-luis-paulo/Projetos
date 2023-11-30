//
//  PlayerInfo.swift
//  My Elo
//
//  Created by Luís Paulo Da Costa Cavalcante on 28/11/23.
//

import Foundation

struct PlayerInfo: Codable {
    let name: String
    let id: String
    let profileIconId: Int
    let summonerLevel: UInt64
}

struct PlayerRank: Codable {
    let tier: String
    let rank: String
    let leaguePoints: Int
    let wins: Int
    let losses: Int
}

struct APIURLBuilder {
    let playerInfo: PlayerInfo
    let playerRank: [PlayerRank]

    init(playerInfo: PlayerInfo, playerRank: [PlayerRank]) {
        self.playerInfo = playerInfo
        self.playerRank = playerRank
    }

    func profileIconURL() -> URL? {
        let urlString = "https://ddragon.leagueoflegends.com/cdn/13.23.1/img/profileicon/\(playerInfo.profileIconId).png"

        return URL(string: urlString)
    }
    
    func tierIconURL() -> URL? {
        let urlString = "https://cdn.dak.gg/tft/images2/tft/tiers/\(playerRank.first?.tier.lowercased() ?? "").png?set=10"
        
        return URL(string: urlString)
    }
    
}

enum apiError: Error {
    case invalidURL
    case invalidResponse
    case invalidData
}

class Service {
    
    private let apiKey: String = "RGAPI-dc6d8421-6727-4085-973b-d8b39b72cd86"
    var region: String = "br1"
    private let suffixSummoner: String = "/tft/summoner/v1/summoners/by-name/"
    private let suffixRank: String = "/tft/league/v1/entries/by-summoner/"
    
    var baseURL: String {
        "https://\(region).api.riotgames.com"
    }
    
    func getPlayerId(username: String) async throws -> PlayerInfo {
        let urlStringSummoner = "\(baseURL)\(suffixSummoner)\(username)?api_key=\(apiKey)"
        
        guard let urlSummoner = URL(string: urlStringSummoner) else { throw apiError.invalidURL }
                
        let (data, response) = try await URLSession.shared.data(from: urlSummoner)
        
        guard let response = response as? HTTPURLResponse, response.statusCode == 200 else {
            throw apiError.invalidResponse
        }
        
        do {
            let decoder = JSONDecoder()
            let playerInfo = try decoder.decode(PlayerInfo.self, from: data)
            
            return playerInfo
        } catch {
            throw apiError.invalidData
        }
    }
    
    func getPlayerRank(username: String) async throws -> [PlayerRank] {
        let playerInfo = try await getPlayerId(username: username)
            
        let urlStringRank = "\(baseURL)\(suffixRank)\(playerInfo.id)?api_key=\(apiKey)"
        
        guard let urlRank = URL(string: urlStringRank) else { throw apiError.invalidURL }
                
        let (data, response) = try await URLSession.shared.data(from: urlRank)
        
        guard let response = response as? HTTPURLResponse, response.statusCode == 200 else {
            throw apiError.invalidResponse
        }
        
        do {
            let decoder = JSONDecoder()
            let playerRank = try decoder.decode([PlayerRank].self, from: data)
            
            return playerRank
        } catch {
            throw apiError.invalidData
        }
    }
    
    
}
