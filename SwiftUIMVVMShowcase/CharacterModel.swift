import Foundation

enum SWCharacter {
    
    struct SWCharacterResponse: Codable {
        var results: [MovieCharacter]
    }

    struct MovieCharacter: Codable {
        
        var name: String
        var gender: String
        var birth_year: String
        var starships: [String]
    }
    
    struct IdentifiableCharacters: Identifiable {
        var id = UUID()
        var name: String
        var gender: String
        var birth_year: String
        var starships: [String]
        
        init(_ character: MovieCharacter) {
            self.name = character.name
            self.gender = character.gender
            self.birth_year = character.birth_year
            self.starships = character.starships
        }
    }
    
}
