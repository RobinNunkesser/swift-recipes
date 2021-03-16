import SwiftUI

struct ContentView: View {
    @State var textFieldEntry = ""
    @State var showAlert = false
    
    var body: some View {
        VStack {
            TextField("Entry",text: $textFieldEntry)
                .accessibility(identifier: "TextField1")
            Button(action: { self.showAlert.toggle() }) {
                Text("Button")
            }
            .accessibility(identifier: "show alert")
            .alert(isPresented: $showAlert) { () -> Alert in
                Alert(title: Text("Cool title"),
                      message: Text("Cool alert!"),
                      dismissButton: .cancel(Text("OK")))
            }
        }
    }
}
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
