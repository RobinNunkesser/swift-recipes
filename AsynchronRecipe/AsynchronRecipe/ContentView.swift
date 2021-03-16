import SwiftUI

struct ContentView: View {
    @State var result = ""
    
    var body: some View {
        VStack(alignment: .center) {
            Button(action: start) {
                Text("Start")
            }
            Text(result)
        }
    }
    
    func start() {
        asyncCall(completion: {
            switch $0 {
            case let .success(value): self.result = value
            case let .failure(error): debugPrint(error)
            }
        })
        result = "Started"
    }
    
    func asyncCall(completion: @escaping (Result<String,Error>) -> Void) {
        DispatchQueue.global(qos: .userInitiated).async {
            sleep(1)
            completion(.success("My return value"))
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
