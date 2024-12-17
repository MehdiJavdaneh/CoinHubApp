//
//  CryptoCardView.swift
//  CoinHubApp
//
//  Created by Mehdi Javdaneh on 12/12/24.
//


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
                    .foregroundColor(Color(hue: 0.701, saturation: 1.0, brightness: 0.322))
                
                Spacer()
                
                Image(systemName: isPositive ? "arrow.up.circle.fill" : "arrow.down.circle.fill")
                    .foregroundColor(isPositive ? .green : .red)
            }
            
            
            RoundedRectangle(cornerRadius: 8)
                .fill(Color.green.opacity(0.2))
                .frame(height: 80)
            
            Text(price)
                .font(.title)
                .fontWeight(.semibold)
                .foregroundColor(Color(hue: 0.701, saturation: 1.0, brightness: 0.322))
                .multilineTextAlignment(.center)
                .lineLimit(26)
                .foregroundStyle(.white)
            
            Text("Market cap \(marketCap)")
                .font(.caption)
                .foregroundColor(Color(hue: 0.701, saturation: 1.0, brightness: 0.322))
            
            Text("Volume (24h) \(volume)")
                .font(.caption)
                .foregroundColor(Color(hue: 0.701, saturation: 1.0, brightness: 0.322))
            
            Spacer()
            
           
            HStack {
                Spacer()
                Button(action: {
                    
                }) {
                    Image(systemName: "plus.circle")
                        .padding(.horizontal, -87.0)
                        .foregroundColor(Color(hue: 0.701, saturation: 1.0, brightness: 0.322))
                }
            }
        }
        .padding()
        .frame(width: 190, height: 285)
        .background(Color.gray.opacity(0.1))
        .cornerRadius(16)
        .shadow(radius: 7)
    }
}



struct CryptoCardView_Previews: PreviewProvider {
    static var previews: some View {
        CryptoCardView(cryptoName: "BTCUSDT", price: "96,246.45", marketCap: "$1.88T", volume: "$60.03B", chartData: [3, 2, 1, 4, 5], isPositive: true)
    }
}

