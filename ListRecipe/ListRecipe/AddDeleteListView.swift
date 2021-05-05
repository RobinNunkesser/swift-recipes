import SwiftUI

struct AddDeleteListView: View {
    @EnvironmentObject var viewModel: AddDeleteListViewModel
    
    var body: some View {
        List {
            ForEach(viewModel.items) {
                SubtitleRow(text: $0.text, detailText: $0.detailText)
            }
            .onDelete(perform: viewModel.deleteItem)
        }
        .navigationBarItems(trailing: HStack {
                EditButton()
                Button(action: viewModel.addItem) {
                    Label("Add Item", systemImage: "plus")
                        .labelStyle(IconOnlyLabelStyle())
                }
            }
        )
        .navigationBarTitle("Add / Delete List View")
    }
    
}

struct AddDeleteListView_Previews: PreviewProvider {
    static var previews: some View {
        AddDeleteListView().environmentObject(AddDeleteListViewModel())
    }
}
