import SwiftUI

struct WatchlistView: View {
    @State private var watchlist: [CryptoCardModel] = []
    
    var body: some View {
        NavigationView {
            List(watchlist) { crypto in
                NavigationLink(destination: CryptoDetailView(crypto: crypto)) {
                    CryptoCardView(cryptoName: crypto.name, price: crypto.price, marketCap: crypto.marketCap, volume: crypto.volume, chartData: crypto.chartData, isPositive: crypto.isPositive)
                }
            }
            .navigationTitle("Watchlist")
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
        // Refresh logic here
    }
}

struct WatchlistView_Previews: PreviewProvider {
    static var previews: some View {
        WatchlistView()
    }
}