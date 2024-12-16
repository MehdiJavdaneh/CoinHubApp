import SwiftUI

struct CryptoDetailView: View {
    let crypto: CryptoCardModel
    
    var body: some View {
        ScrollView {
            VStack(alignment: .leading, spacing: 16) {
                Text(crypto.name)
                    .font(.largeTitle)
                    .fontWeight(.bold)
                
                // Display price
                Text("Price: \(crypto.price)")
                    .font(.title2)
                    .padding(.bottom, 4)
                
                // Display market cap
                Text("Market Cap: \(crypto.marketCap)")
                    .font(.body)
                
                // Display volume
                Text("Volume (24h): \(crypto.volume)")
                    .font(.body)
                
                // Placeholder for chart
                VStack {
                    Text("Price Chart")
                        .font(.headline)
                        .padding(.bottom, 4)
                    
                    // Placeholder chart view (you can replace this with a proper chart view)
                    RoundedRectangle(cornerRadius: 8)
                        .fill(crypto.isPositive ? Color.green.opacity(0.2) : Color.red.opacity(0.2))
                        .frame(height: 200)
                }
                
                Spacer()
            }
            .padding()
        }
        .navigationTitle(crypto.name)
        .navigationBarTitleDisplayMode(.inline)
    }
}

struct CryptoDetailView_Previews: PreviewProvider {
    static var previews: some View {
        let sampleCrypto = CryptoCardModel(name: "BTCUSDT", price: "96,246.45", marketCap: "$1.88T", volume: "$60.03B", chartData: [1, 2, 3, 4, 5], isPositive: true)
        CryptoDetailView(crypto: sampleCrypto)
    }
}