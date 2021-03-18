import SwiftUI

struct SectionListView: View {
    let sections = [SectionViewModel(header: "Section 1",
                                     items: [ItemViewModel(text: "S1, R1",
                                                           detailText: "D1")]),
                    SectionViewModel(header: "Section 2",
                                     items: [ItemViewModel(text: "S2, R2",
                                                           detailText: "D2")])]
            
    var body: some View {
        List {
            ForEach(sections) { section in
                Section(header: Text(section.header)) {
                    ForEach(section.items) {
                        SubtitleRow(text: $0.text, detailText: $0.detailText)
                    }
                }
            }
        }
        .navigationBarTitle("List View with Sections")
    }
}

struct SectionListView_Previews: PreviewProvider {
    static var previews: some View {
        SectionListView()
    }
}
