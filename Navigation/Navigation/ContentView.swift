import SwiftUI

struct ContentView: View {
    @State private var selection = 0
    
    var body: some View {
        TabView(selection: $selection){
            FirstView().tag(0).tabItem {
                Image(systemName: "1.square.fill")
                Text("First")
            }
            SecondView().tag(1).tabItem {
                Image(systemName: "2.square.fill")
                Text("Second")
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
