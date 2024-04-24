
import Alamofire
import Foundation

class AlamofireManager {
    static let shared = AlamofireManager()
    
    func getCharacters(completion: @escaping ([SWCharacter.IdentifiableCharacters]?) -> Void) {
        
        let url = URL(string: "https://swapi.py4e.com/api/people/")!
        
        AF.request(url).response { response in
                        
            if let data = response.data {
                let decoder = JSONDecoder()
                do {
                    let characterResponse = try decoder.decode(SWCharacter.SWCharacterResponse.self, from: data)
                    
                    var finalCharacter = [SWCharacter.IdentifiableCharacters]()
                    for i in characterResponse.results {
                        finalCharacter.append(SWCharacter.IdentifiableCharacters(i))
                    }
                    completion(finalCharacter)
                }catch {
                    print(error)
                    completion(nil)
                }
            }
        }
    }
}
