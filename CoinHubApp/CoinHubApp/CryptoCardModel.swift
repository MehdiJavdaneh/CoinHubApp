//
//  CryptoCardModel.swift
//  CoinHubApp
//
//  Created by Mehdi Javdaneh on 12/12/24.
//


import Foundation

struct CryptoCardModel: Identifiable {
    let id = UUID()
    let name: String
    let price: String
    let marketCap: String
    let volume: String
    let chartData: [Double]
    let isPositive: Bool
}