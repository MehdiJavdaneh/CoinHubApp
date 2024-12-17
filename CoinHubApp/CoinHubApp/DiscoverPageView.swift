//
//  DiscoverPageView.swift
//  CoinHubApp
//
//  Created by Mehdi Javdaneh on 12/12/24.
//


import SwiftUI


struct DiscoverPageView: View {
    @State private var searchText: String = ""
    private func refreshDiscoverPage() {
        
    }
    
    var body: some View {
        VStack(alignment: .leading, spacing: 16) {
            
            HStack {
                TextField("Search", text: $searchText)
                    .padding(.leading, 8)
                    .frame(height: 40)
                    .background(Color(.systemGray5))
                    .cornerRadius(8)
                
            }
            .padding()
            
                
                
                ScrollView(.horizontal, showsIndicators: false) {
                    HStack(spacing: 16) {
                        CryptoCardView(cryptoName: "ETHUSDT", price: "3785.01", marketCap: "$456.61B", volume: "$46.60B", chartData: [1, 2, 3, 4, 5], isPositive: true)
                        CryptoCardView(cryptoName: "BTCUSDT", price: "96,246.45", marketCap: "$1.88T", volume: "$60.03B", chartData: [3, 2, 1, 4, 5], isPositive: false)
                        CryptoCardView(cryptoName: "BTCUSDT", price: "96,246.45", marketCap: "$1.88T", volume: "$60.03B", chartData: [3, 2, 1, 4, 5], isPositive: false)
                        
                    }
                    .padding(.horizontal)
                }
                .scrollTargetBehavior(.viewAligned)
                
                
                VStack(alignment: .leading) {
                    Text("News")
                        .font(.title)
                        .fontWeight(.bold)
                        .foregroundColor(Color(hue: 0.701, saturation: 1.0, brightness: 0.322))
                        .padding(.horizontal)
                    
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
            .navigationBarHidden(true)
            .toolbar {
                Button(action: refreshDiscoverPage) {
                    Image(systemName: "arrow.clockwise")
                }
            }
            .refreshable {
                refreshDiscoverPage()
            }
        }
    
       
    }
    
    struct DiscoverPageView_Previews: PreviewProvider {
        static var previews: some View {
            DiscoverPageView()
        }
    }

