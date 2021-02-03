import SwiftUI

struct ContentView: View {
    @State private var navBarHidden = false

    var body: some View {
        NavigationView {
            ZStack {
                TacPadView(navBarHidden: $navBarHidden)
            }
            .background(Color.tacpadBlue.edgesIgnoringSafeArea(.all))
            .edgesIgnoringSafeArea(.vertical)
            .navigationBarTitle("Home")
            .navigationBarHidden(navBarHidden)
            .onAppear {
                navBarHidden = true
            }
        }
        .navigationViewStyle(StackNavigationViewStyle())
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            ContentView()
                .previewLayout(PreviewLayout.fixed(width: 568, height: 320))
                .previewDisplayName("iPhone SE 2020")

            ContentView()
                .previewLayout(PreviewLayout.fixed(width: 609, height: 281))
                .previewDisplayName("iPhone 11 Pro, XS")

            ContentView()
                .previewLayout(PreviewLayout.fixed(width: 672, height: 311))
                .previewDisplayName("iPhone 11 Pro Max, XS Max")
        }
    }
}
