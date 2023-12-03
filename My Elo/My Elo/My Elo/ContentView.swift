//
//  ContentView.swift
//  My Elo
//
//  Created by Luís Paulo Da Costa Cavalcante on 28/11/23.
//

import SwiftUI

struct ContentView: View {
    
    @State private var playerInfo: PlayerInfo?
    @State private var playerPUUID: PlayerPUUID?
    @State private var playerRank: [PlayerRank]?
    @State private var urlBuilder: APIURLBuilder?
    @State var searchTerm: String
    @State private var service = Service()
    
    let regions = ["BR1", "EUN1", "EUW1", "JP1", "KR", "LA1", "LA2", "NA1", "OC1", "PH2", "RU", "SG2", "TH2", "TR1", "TW2", "VN2"]
    @State var selectedRegion = "BR1"
        
    
    var body: some View {
        
        Image("bg-image")
            .resizable()
            .aspectRatio(contentMode: .fill)
            .edgesIgnoringSafeArea(.all)
            .opacity(0.8)
            .overlay(
                VStack{
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
                                .foregroundColor(.black)
                        }
                        .padding(.leading, 10)
                        
                        TextField("Enter username#tag", text: $searchTerm)
                            .foregroundColor(.black)
                            .textFieldStyle(RoundedBorderTextFieldStyle())
                            .autocapitalization(.none)
                        
                        Button(action: {
                            Task {
                                await fetchData()
                            }
                        }) {
                            Image(systemName: "magnifyingglass")
                                .renderingMode(.original)
                        }
                        .background(Color.white)
                        .clipShape(Circle())
                        .padding(.trailing, 10)
                    }
                    .background(.white)
                    .cornerRadius(10)
                    .shadow(radius: 5)
                    .frame(maxWidth: 330)
                    
                    
                    VStack(alignment: .center) {
                        
                        Text("Ranked TFT")
                            .font(.title2)
                            .frame(alignment: .center)
                            .bold()
                        
                        HStack {
                            AsyncImage(url: urlBuilder?.profileIconURL()) { image in
                                image
                                    .resizable()
                                    .frame(width: 100, height: 100)
                                    .aspectRatio(contentMode: .fit)
                                    .clipShape(Circle())
                            } placeholder: {
                                Circle()
                                    .frame(width: 100, height: 100)
                            }
                            
                            Spacer()
                            
                            VStack{
                                Text(playerInfo?.name ?? "Username")
                                    .bold()
                                
                                Text("Level " + String(playerInfo?.summonerLevel ?? 100))
                            }
                            
                        }
                        .frame(width: 250)
                        
                        HStack {
                            AsyncImage(url: urlBuilder?.tierIconURL()) { image in
                                image
                                    .resizable()
                                    .frame(width: 100, height: 100)
                                    .aspectRatio(contentMode: .fit)
                                    .clipShape(Circle())
                            } placeholder: {
                                Circle()
                                    .frame(width: 100, height: 100)
                            }
                            
                            Spacer()
                            
                            VStack {
                                HStack {
                                    Text(playerRank?.first?.tier ?? "Elo")
                                    Text(playerRank?.first?.rank ?? "Rank")
                                }
                                .bold()
                                
                                Text(String(playerRank?.first?.leaguePoints ?? 0)+" LP")
                            }
                        }
                        .frame(width: 250)

                    }
                    .padding(EdgeInsets(top: 20, leading: 40, bottom: 20, trailing: 40))
                    .background(.white)
                    .cornerRadius(10)
                    .shadow(radius: 5)
                    .frame(maxWidth: .infinity)
                    
                    Spacer()
                }
                
            )
    }
    
    private func fetchData() async {
        do {
            let entrada = tratarUsername(gameNameWithTag: searchTerm)
            
            service.setRegion(selectedRegion)
            //service.setEntrada(entrada.gameName, entrada.tagline, selectedRegion)
            
            playerPUUID = try await service.getPlayerPUUID(gameName: entrada.gameName, tagLine: entrada.tagLine)
            playerInfo = try await service.getPlayerId(puuid: playerPUUID?.puuid ?? "")
            playerRank = try await service.getPlayerRank(summonerId: playerInfo?.id ?? "")
            
            urlBuilder = APIURLBuilder(playerInfo: playerInfo!, playerRank: playerRank!)
        } catch apiError.invalidURL {
            print("Invalid URL")
        } catch apiError.invalidResponse {
            print("Invalid response")
        } catch apiError.invalidData {
            print("Invalid Data")
        } catch {
            print("Unexpected error")
        }
    }
    
    private func tratarUsername(gameNameWithTag: String) -> (gameName: String, tagLine: String) {
        let components = gameNameWithTag.components(separatedBy: "#")
        
        let gameName = components[0]
        let tagLine = components[1]
        
        return (gameName, tagLine)
    }
}

#Preview {
    ContentView(searchTerm: "")
}

