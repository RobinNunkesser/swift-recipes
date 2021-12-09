import SwiftUI

struct ContentView: View {
    @StateObject var viewModel = ContentViewModel()
    
    var body: some View {
        VStack(alignment: .leading) {
            TextField("Enter forename", text: $viewModel.forename)
            TextField("Enter surname", text: $viewModel.surname)
            NameView()
            Text(viewModel.greeting)
        }
        .padding(.horizontal)
        .environmentObject(viewModel)
    }
}

struct NameView: View {
    @EnvironmentObject var viewModel: ContentViewModel
    
    var body: some View {
        HStack {
            Text("Forename")
            Text(viewModel.forename)
        }
        HStack {
            Text("Surname")
            Text(viewModel.surname)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
