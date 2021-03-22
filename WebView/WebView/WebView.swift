import SwiftUI
import WebKit

struct WebView: UIViewRepresentable {

    typealias UIViewType = WKWebView
    var url : URL
    
    func makeUIView(context: UIViewRepresentableContext<WebView>) -> WKWebView {
        WKWebView(frame: .zero)
    }
    
    func updateUIView(_ uiView: WKWebView,
                      context: UIViewRepresentableContext<WebView>) {
        let request = URLRequest(url: url)
        uiView.load(request)
    }
        
}

struct WebView_Previews: PreviewProvider {
    static var previews: some View {
        WebView(url: URL(string: "https://www.apple.com")!)
    }
}
