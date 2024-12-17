//
//  WatchlistModel.swift
//  CoinHubApp
//
//  Created by Mehdi Javdaneh on 17/12/24.
//

import Foundation


class WatchlistModel: ObservableObject {
    static let shared = WatchlistModel()
    
    @Published var watchlist: [String] = []
    
    func add(_ crypto: String) {
        if !watchlist.contains(crypto) {
            watchlist.append(crypto)
        }
    }
}
