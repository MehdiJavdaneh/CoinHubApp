//
//  CryptoDetailView.swift
//  CoinHubApp
//
//  Created by Mehdi Javdaneh on 12/12/24.
//


import SwiftUI

struct CryptoDetailView: View {
    let crypto: CryptoCardModel
    private func refreshCryptoDetail() {
        
    }
    
    
    var body: some View {
        ScrollView {
            VStack(alignment: .leading, spacing: 16) {
                Text(crypto.name)
                    .font(.largeTitle)
                    .fontWeight(.heavy)
                    .foregroundColor(Color(hue: 0.701, saturation: 1.0, brightness: 0.322))
                
                
                Text("\(crypto.price)")
                    .font(.title2)
                    .fontWeight(.semibold)
                    .foregroundColor(Color(hue: 0.701, saturation: 1.0, brightness: 0.322))
                    .padding(.bottom, 4)
                
               
                Text("Market Cap: \(crypto.marketCap)")
                    .font(.body)
                    .foregroundColor(Color(hue: 0.701, saturation: 1.0, brightness: 0.322))
                
                
                Text("Volume (24h): \(crypto.volume)")
                    .font(.body)
                    .foregroundColor(Color(hue: 0.701, saturation: 1.0, brightness: 0.322))
                
                
                VStack {
                    Text("Price Chart")
                        .font(.headline)
                        .foregroundColor(Color(hue: 0.701, saturation: 1.0, brightness: 0.322))
                        .padding(.bottom, 4)
                    
                    
                    
                    RoundedRectangle(cornerRadius: 8)
                        .fill(crypto.isPositive ? Color.green.opacity(0.2) : Color.red.opacity(0.2))
                        .frame(height: 200)
                }
                VStack(alignment: .leading) {
                    Text("\(crypto.name)"+" News")
                        .font(.headline)
                        .fontWeight(.semibold)
                        .foregroundColor(Color(hue: 0.701, saturation: 1.0, brightness: 0.322))
                        .padding(.horizontal, 121)
                    
                    ScrollView(.horizontal, showsIndicators: false) {
                        HStack(spacing: 16) {
                            NewsCardView(imageName: "news_image_placeholder", headline: "XRP Price Eyes 1,350% Surge", description: "XRP Price Eyes 1,350% Surge, But This Ripple Rival Is Forecasted To Complete 19,530% Move In 7 Days")
                            
                            NewsCardView(imageName: "news_image_placeholder", headline: "XRP Price Eyes 1,350% Surge", description: "XRP Price Eyes 1,350% Surge, But This Ripple Rival Is Forecasted To Complete 19,530% Move In 7 Days")
                            
                            NewsCardView(imageName: "news_image_placeholder", headline: "XRP Price Eyes 1,350% Surge", description: "XRP Price Eyes 1,350% Surge, But This Ripple Rival Is Forecasted To Complete 19,530% Move In 7 Days")
                            
                        }
                        .scrollTargetLayout()
                    }
                    .scrollTargetBehavior(.viewAligned)
                    .safeAreaPadding(.horizontal, 40)
                    .safeAreaPadding(.vertical, 10)
                    
                    
                    
                }
                
                Spacer()
            }
            .padding()
        }
        .navigationTitle(crypto.name)
        .navigationBarTitleDisplayMode(.inline)
        .toolbar {
            Button(action: refreshCryptoDetail) {
                Image(systemName: "arrow.clockwise")
            }
        }
        .refreshable {
            refreshCryptoDetail()
        }
    }

}

struct CryptoDetailView_Previews: PreviewProvider {
    static var previews: some View {
        let sampleCrypto = CryptoCardModel(name: "BTCUSDT", price: "96,246.45", marketCap: "$1.88T", volume: "$60.03B", chartData: [1, 2, 3, 4, 5], isPositive: true)
        CryptoDetailView(crypto: sampleCrypto)
    }
}
