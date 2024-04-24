import Foundation


class CharacterDetailViewModel: ObservableObject {
    
    @Published var character: SWCharacter.IdentifiableCharacters?
    
    init(character: SWCharacter.IdentifiableCharacters? = nil) {
        self.character = character
    }
}
