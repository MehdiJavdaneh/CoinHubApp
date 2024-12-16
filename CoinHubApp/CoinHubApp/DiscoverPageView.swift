import SwiftUI

struct DiscoverPageView: View {
    @State private var searchText: String = ""
    
    var body: some View {
        VStack(alignment: .leading, spacing: 16) {
            // Search Bar
            HStack {
                TextField("Search", text: $searchText)
                    .padding(.leading, 8)
                    .frame(height: 40)
                    .background(Color(.systemGray5))
                    .cornerRadius(8)
                Button(action: {
                    // Action for voice search
                }) {
                    Image(systemName: "mic.fill")
                        .padding()
                }
            }
            .padding()
            
            // Crypto Cards Section
            ScrollView(.horizontal, showsIndicators: false) {
                HStack(spacing: 16) {
                    CryptoCardView(cryptoName: "ETHUSDT", price: "3785.01", marketCap: "$456.61B", volume: "$46.60B", chartData: [1, 2, 3, 4, 5], isPositive: true)
                    CryptoCardView(cryptoName: "BTCUSDT", price: "96,246.45", marketCap: "$1.88T", volume: "$60.03B", chartData: [3, 2, 1, 4, 5], isPositive: false)
                    // Add more cards if needed
                }
                .padding(.horizontal)
            }
            
            // News Section
            VStack(alignment: .leading) {
                Text("News")
                    .font(.title)
                    .fontWeight(.bold)
                    .padding(.horizontal)
                
                ScrollView(.horizontal, showsIndicators: false) {
                    HStack(spacing: 16) {
                        NewsCardView(imageName: "news_image_placeholder", headline: "XRP Price Eyes 1,350% Surge", description: "XRP Price Eyes 1,350% Surge, But This Ripple Rival Is Forecasted To Complete 19,530% Move In 7 Days")
                        // Add more news cards if needed
                    }
                    .padding(.horizontal)
                }
            }
            
            Spacer()
        }
        .navigationBarHidden(true)
    }
}

struct DiscoverPageView_Previews: PreviewProvider {
    static var previews: some View {
        DiscoverPageView()
    }
}