import SwiftUI

struct ContentView: View {
    @State var text = ""
    @State var outputText = ""
    
    var body: some View {
        VStack(alignment: .leading) {
            TextField("Enter text", text: $text)
            Button(action: process) {
                Text("Process")
            }
            Text(outputText)
        }
    }
    
    func process() {
        outputText = text.uppercased()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
