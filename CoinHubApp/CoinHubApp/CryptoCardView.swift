import SwiftUI

struct CryptoCardView: View {
    let cryptoName: String
    let price: String
    let marketCap: String
    let volume: String
    let chartData: [Double]
    let isPositive: Bool
    
    var body: some View {
        VStack(alignment: .leading, spacing: 8) {
            HStack {
                Text(cryptoName)
                    .font(.headline)
                    .fontWeight(.bold)
                
                Spacer()
                
                Image(systemName: isPositive ? "arrow.up.circle.fill" : "arrow.down.circle.fill")
                    .foregroundColor(isPositive ? .green : .red)
            }
            
            // Placeholder for chart
            RoundedRectangle(cornerRadius: 8)
                .fill(Color.green.opacity(0.2))
                .frame(height: 80)
            
            Text(price)
                .font(.largeTitle)
                .fontWeight(.bold)
            
            Text("Market cap \(marketCap)")
                .font(.caption)
            
            Text("Volume (24h) \(volume)")
                .font(.caption)
            
            Spacer()
            
            // Action button
            HStack {
                Spacer()
                Button(action: {
                    // Add to watchlist action
                }) {
                    Image(systemName: "plus.circle")
                        .padding(.trailing)
                }
            }
        }
        .padding()
        .frame(width: 180)
        .background(Color.white)
        .cornerRadius(16)
        .shadow(radius: 4)
    }
}

struct CryptoCardView_Previews: PreviewProvider {
    static var previews: some View {
        CryptoCardView(cryptoName: "BTCUSDT", price: "96,246.45", marketCap: "$1.88T", volume: "$60.03B", chartData: [3, 2, 1, 4, 5], isPositive: true)
    }
}