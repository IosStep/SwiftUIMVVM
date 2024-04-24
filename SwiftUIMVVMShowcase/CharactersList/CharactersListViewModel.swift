import Foundation

class CharactersListViewModel: ObservableObject {
    
    private let manager = AlamofireManager.shared
    
    @Published var characters = [SWCharacter.IdentifiableCharacters]()
    
    func viewDidAppear() {
        getCharacters()
    }
    
    private func getCharacters() {
        manager.getCharacters { response in
            guard let characters = response else { return }
        
            self.characters = characters
        }
    }
    
}
