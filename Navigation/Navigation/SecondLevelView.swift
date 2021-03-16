import SwiftUI

struct SecondLevelView: View {
    var text : String
    
    var body: some View {
        Text(text)
            .navigationBarTitle(Text("SecondLevelViewTitle"))
    }
}

struct SecondLevelView_Previews: PreviewProvider {
    static var previews: some View {
        SecondLevelView(text: "Hello, World!")
    }
}
