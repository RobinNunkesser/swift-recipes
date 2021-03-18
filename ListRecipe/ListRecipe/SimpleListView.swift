import SwiftUI

struct SimpleListView: View {
    let items = [ItemViewModel(text: "Title 1", detailText: "Subtitle 1"),
                 ItemViewModel(text: "Title 2", detailText: "Subtitle 2")]
    
    var body: some View {        
        List(items) {
            SubtitleRow(text: $0.text, detailText: $0.detailText)            
        }
        .navigationBarTitle("Simple List View")
    }
}

struct SimpleListView_Previews: PreviewProvider {
    static var previews: some View {
        SimpleListView()
    }
}
