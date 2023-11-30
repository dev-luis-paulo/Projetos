//
//  ContentView.swift
//  My Elo
//
//  Created by Luís Paulo Da Costa Cavalcante on 28/11/23.
//

import SwiftUI

struct ContentView: View {
    
    @State private var playerInfo: PlayerInfo?
    @State private var playerRank: [PlayerRank]?
    @State private var urlBuilder: APIURLBuilder?
    @State var searchTerm: String
    
    var body: some View {
        
        Image("bg-image")
            .resizable()
            .aspectRatio(contentMode: .fill)
            .edgesIgnoringSafeArea(.all)
            .opacity(0.8)
            .overlay(
                VStack{
                    HStack {
                        TextField("Enter username", text: $searchTerm)
                            .foregroundColor(.black)
                            .textFieldStyle(RoundedBorderTextFieldStyle())
                            .autocapitalization(.none)
                            .padding(EdgeInsets(top: 0, leading: 10, bottom: 0, trailing: 0))
                        
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
                                    .font(.title3)
                                
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
                                .font(.title3)
                                
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
                    .task {
                        await fetchData()
                    }
                    
                    Spacer()
                }
                
            )
    }
    
    private func fetchData() async {
        do {
            playerInfo = try await Service().getPlayerId(username: searchTerm)
            playerRank = try await Service().getPlayerRank(username: searchTerm)
            urlBuilder = APIURLBuilder(playerInfo: playerInfo ?? PlayerInfo(name: "", id: "", profileIconId: 0, summonerLevel: 0), playerRank: playerRank ?? [PlayerRank(tier: "unranked", rank: "", leaguePoints: 0, wins: 0, losses: 0)])
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
}

#Preview {
    ContentView(searchTerm: "")
}

