import SwiftUI

struct SecondView: View {
    var body: some View {
        NavigationView {
            Text("SecondViewLabel")
                .font(.title)
                .navigationBarTitle(Text("SecondViewTitle"))
        }
        .tabItem {
            VStack {
                Image("second")
                Text("Second")
            }
        }
    }
}

struct SecondView_Previews: PreviewProvider {
    static var previews: some View {
        SecondView()
    }
}
