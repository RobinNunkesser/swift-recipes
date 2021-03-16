import SwiftUI

struct ContentView: View {
    @EnvironmentObject var viewModel : ContentViewModel
    
    var body: some View {
        VStack(alignment: .leading) {
            TextField("Enter forename", text: $viewModel.forename)
            TextField("Enter surname", text: $viewModel.surname)
            HStack {
                Text("Forename")
                Text(viewModel.forename)
            }
            HStack {
                Text("Surname")
                Text(viewModel.surname)
            }
            Text(viewModel.greeting)
        }
        .padding(.horizontal)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView().environmentObject(ContentViewModel())
    }
}
