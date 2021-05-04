import SwiftUI

struct FirstView: View {
    var body: some View {
        NavigationView {
            NavigationLink(destination: SecondLevelView(text: "Passed data")) {
                Text("NavigateButton")
            }
            .navigationBarTitle(Text("FirstViewTitle"))
        }        
    }
}

struct FirstView_Previews: PreviewProvider {
    static var previews: some View {
        FirstView()
    }
}
