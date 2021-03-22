import SwiftUI
import PlaceholderPostsInfrastructure
import PlaceholderPostsCore

struct ContentView: View {
    @State var id = ""
    @State var result = ""
    @State var foundation = true
    @State private var showError = false
    @State private var errorText = ""
    
    var body: some View {
        VStack(alignment: .center) {
            TextField("Enter id", text: $id)
                .keyboardType(.numberPad)
            Button(action: start) {
                Text("Start")
            }
            Toggle(isOn: $foundation) {
                Text("Use Foundation?")
            }
            Text(result)
        }.alert(isPresented: $showError) { () -> Alert in
            Alert(title: Text("Error"), message: Text(errorText),
                  dismissButton: .cancel(Text("OK")))
        }
    }
    
    func start() {
        let service = ConcreteGetPostCommand(repository:
            PostRepositoryAdapter(useFoundation: foundation))
        service.execute(inDTO: GetPostCommandDTO(id: Int(id)!)) {
            switch $0 {
            case let .success(value): self.success(value: value)
            case let .failure(error): self.failure(error: error)
            }
        }
    }
    
    func success(value: PlaceholderPostsCore.Post) {
        result = value.description
    }
    
    func failure(error: Error) {
        result = ""
        errorText = error.localizedDescription
        showError.toggle()
    }}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
