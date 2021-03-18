import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationView {
            List {
                NavigationLink(destination: SimpleListView()) {
                    Text("MenuLabelSimpleList")
                }
                NavigationLink(destination: SectionListView()) {
                    Text("MenuLabelSectionList")
                }
                NavigationLink(destination: AddDeleteListView()
                    .environmentObject(AddDeleteListViewModel())) {
                    Text("MenuLabelAddDeleteList")
                }
                NavigationLink(destination: SearchListView()) {
                    Text("MenuLabelSearch")
                }
            }
            .navigationBarTitle("List Examples")
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

