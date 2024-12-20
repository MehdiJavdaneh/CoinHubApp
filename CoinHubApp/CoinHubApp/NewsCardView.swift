//
//  NewsCardView.swift
//  CoinHubApp
//
//  Created by Mehdi Javdaneh on 12/12/24.
//


import SwiftUI

struct NewsCardView: View {
    let imageName: String
    let headline: String
    let description: String
    
    var body: some View {
        VStack(alignment: .leading, spacing: 8) {
            Image(imageName) 
                .resizable()
                .aspectRatio(contentMode: .fill)
                .frame(width: 300, height: 150)
                .clipped()
                .cornerRadius(16)
            
            Text(headline)
                .font(.headline)
                .foregroundColor(Color(hue: 0.701, saturation: 1.0, brightness: 0.322))
                .padding(.leading)
            
            Text(description)
                .font(.caption)
                .multilineTextAlignment(.leading)
                .lineLimit(11)
                .padding([.leading, .bottom, .trailing])
        }
        .frame(maxWidth: 300)
        .background(Color.white)
        .cornerRadius(16)
        .shadow(radius: 4)
    }
}

struct NewsCardView_Previews: PreviewProvider {
    static var previews: some View {
        NewsCardView(imageName: "news_image_placeholder", headline: "XRP Price Eyes 1,350% Surge", description: "XRP Price Eyes 1,350% Surge, But This Ripple Rival Is Forecasted To Complete 19,530% Move In 7 Days")
    }
}
