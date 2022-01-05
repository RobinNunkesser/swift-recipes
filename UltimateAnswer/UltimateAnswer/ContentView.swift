import SwiftUI
import UltimateAnswerCore
import UltimateAnswerInfrastructure

struct ContentView: View {
    let service = GetAnswerCommand(superComputer: SuperComputerAdapter())
    
    @State var question = ""
    @State var answer = ""
    
    var body: some View {
        VStack(alignment: .center) {
            TextField("Enter question", text: $question)
            Button(action: start) {
                Text("Start")
            }
            Text(answer)
        }
    }
    
    func start() {
        Task(priority: .medium) {
            do {
                try success(value: await service.execute(inDTO: question))
            } catch let error {
                failure(error: error)
            }
        }
    }
    
    func success(value: String) {
        answer = value
    }
    
    func failure(error: Error) {
        debugPrint(error.localizedDescription)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
