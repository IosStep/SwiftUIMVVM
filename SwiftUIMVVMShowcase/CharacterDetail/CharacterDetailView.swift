import SwiftUI


struct CharacterDetailView: View {
    
    @StateObject var viewModel: CharacterDetailViewModel
    
    var body: some View {
        
        VStack {
            Text("Details")
                .font(.title)
            
            Text(viewModel.character?.gender ?? "")
            Text(viewModel.character?.name ?? "")
            Text(viewModel.character?.birth_year ?? "")
        }
        
    }
}
