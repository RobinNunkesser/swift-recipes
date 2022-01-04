import SwiftUI

struct SearchListView: View {
    @State var searchText = ""
    
    let items = [ItemViewModel(text: "Title 1", detailText: "Subtitle 1"),
                 ItemViewModel(text: "Title 2", detailText: "Subtitle 2")]
    
    var body: some View {
        List {
            ForEach(searchText=="" ? items : items.filter {
                $0.text.localizedCaseInsensitiveContains(searchText) ||
                $0.detailText.localizedCaseInsensitiveContains(searchText) },
                    id: \.text) { item in
                SubtitleRow(text: item.text, detailText: item.detailText)
            }.searchable(text: $searchText)
        }
        .navigationBarTitle("Search List View")
    }
}

struct SearchListView_Previews: PreviewProvider {
    static var previews: some View {
        SearchListView()
    }
}
