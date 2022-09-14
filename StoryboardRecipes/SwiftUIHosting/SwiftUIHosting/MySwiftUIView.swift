//
//  MySwiftUIView.swift
//  SwiftUIHosting
//
//  Created by Prof. Dr. Nunkesser, Robin on 14.09.22.
//

import SwiftUI

class SwiftUIViewHostingController: UIHostingController<MySwiftUIView> {
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder, rootView: MySwiftUIView())
    }
}


struct MySwiftUIView: View {
    var body: some View {
        Text("Hello, World!")
    }
}

struct MySwiftUIView_Previews: PreviewProvider {
    static var previews: some View {
        MySwiftUIView()
    }
}
