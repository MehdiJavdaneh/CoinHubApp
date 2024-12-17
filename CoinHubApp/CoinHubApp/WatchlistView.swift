//
//  WatchlistView.swift
//  CoinHubApp
//
//  Created by Mehdi Javdaneh on 12/12/24.
//


import SwiftUI

struct WatchlistView: View {
    @State private var watchlist: [CryptoCardModel] = []
    func addToWatchlist(_ crypto: String) {
        WatchlistModel.shared.add(crypto)
    }
    
    var body: some View {
        NavigationView {
            List(watchlist) { crypto in
                NavigationLink(destination: CryptoDetailView(crypto: crypto)) {
                    CryptoCardView(cryptoName: crypto.name, price: crypto.price, marketCap: crypto.marketCap, volume: crypto.volume, chartData: crypto.chartData, isPositive: crypto.isPositive)
                }
            }
            .navigationTitle("Watchlist")
            .foregroundColor(Color(hue: 0.701, saturation: 1.0, brightness: 0.322))
            .toolbar {
                Button(action: refreshWatchlist) {
                    Image(systemName: "arrow.clockwise")
                }
            }
            .refreshable {
                refreshWatchlist()
            }
        }
    }
    
    private func refreshWatchlist() {
        
    }
}

struct WatchlistView_Previews: PreviewProvider {
    static var previews: some View {
        WatchlistView()
    }
}
