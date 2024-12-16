import SwiftUI

struct TabBarView: View {
    var body: some View {
        TabView {
            DiscoverPageView()
                .tabItem {
                    Image(systemName: "magnifyingglass")
                    Text("Discover")
                }

            WatchlistView()
                .tabItem {
                    Image(systemName: "eye.fill")
                    Text("Watchlist")
                }
        }
    }
}

struct TabBarView_Previews: PreviewProvider {
    static var previews: some View {
        TabBarView()
    }
}