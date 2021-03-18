import SwiftUI

struct SearchListView: View {
    @State var searchText = ""
    
    let items = [ItemViewModel(text: "Title 1", detailText: "Subtitle 1"),
                 ItemViewModel(text: "Title 2", detailText: "Subtitle 2")]
    
    var filteredItems: [ItemViewModel] {
        return searchText=="" ? items : items.filter {
            $0.text.localizedCaseInsensitiveContains(searchText) ||
                $0.detailText.localizedCaseInsensitiveContains(searchText)
        }
    }
    
    var body: some View {
        Group {
            SearchBar(text: $searchText)
            List(filteredItems, id: \.text) { item in
                SubtitleRow(text: item.text, detailText: item.detailText)
            }
        }
        .navigationBarTitle("Search List View")
    }
}

struct SearchListView_Previews: PreviewProvider {
    static var previews: some View {
        SearchListView()
    }
}
