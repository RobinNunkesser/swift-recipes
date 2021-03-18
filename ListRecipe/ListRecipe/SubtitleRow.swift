import SwiftUI

struct SubtitleRow: View {
    var text : String
    var detailText: String
    
    var body: some View {
        VStack(alignment: .leading) {
            Text(verbatim: text)
                .font(.subheadline)
            Text(verbatim: detailText)
                .font(.caption)
        }
    }
}

struct SubtitleRow_Previews: PreviewProvider {
    static var previews: some View {
        List(0 ..< 5) { item in
            SubtitleRow(text: "Some Text", detailText: "Some Detail")
        }
    }
}
