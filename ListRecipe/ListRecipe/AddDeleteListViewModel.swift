import Foundation

final class AddDeleteListViewModel : ObservableObject {
    @Published var items : [ItemViewModel] = []
    
    func addItem() {
        let newItem = ItemViewModel(text: UUID().uuidString,
        detailText: UUID().uuidString)
        items.append(newItem)
    }
    
    func deleteItem(indexSet: IndexSet) {
        // Only one deletion at a time allowed in this example
        guard let index = indexSet.first else { return }
        items.remove(at: index)
    }

}
