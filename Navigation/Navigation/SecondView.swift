import SwiftUI

struct SecondView: View {
    var body: some View {
        NavigationView {
            Text("SecondViewLabel")
                .font(.title)
                .navigationTitle(Text("SecondViewTitle"))
        }
    }
}

struct SecondView_Previews: PreviewProvider {
    static var previews: some View {
        SecondView()
    }
}
