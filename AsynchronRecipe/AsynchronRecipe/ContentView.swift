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
        Task(priority: .medium) {
            self.result = await asyncCall() 
        }
        result = "Started"
    }
    
    func asyncCall() async -> String {
        sleep(1)
        return "My return value"
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
