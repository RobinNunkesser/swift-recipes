import SwiftUI
import PlaceholderPostsInfrastructure
import PlaceholderPostsCore

struct ContentView: View {
    @State var id = ""
    @State var result = ""
    @State private var showError = false
    @State private var errorText = ""
    
    var body: some View {
        VStack(alignment: .center) {
            TextField("Enter id", text: $id)
                .keyboardType(.numberPad)
            Button(action: start) {
                Text("Start")
            }
            Text(result)
        }.alert(isPresented: $showError) { () -> Alert in
            Alert(title: Text("Error"), message: Text(errorText),
                  dismissButton: .cancel(Text("OK")))
        }
    }
    
    func start() {
        let service = ConcreteGetPostCommand(repository: PostRepositoryAdapter())
        Task(priority: .medium) {
            do {
                try success(value:
                    await service.execute(inDTO: GetPostCommandDTO(id: Int(id)!)))
            } catch let error {
                failure(error: error)
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
