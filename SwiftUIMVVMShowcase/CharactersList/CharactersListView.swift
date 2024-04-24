//
//  ContentView.swift
//  SwiftUIMVVMShowcase
//
//  Created by Aldiyar Aitpayev on 24.04.2024.
//

import SwiftUI

struct CharactersListView: View {
    
    @StateObject var viewModel: CharactersListViewModel
    
    var body: some View {
        NavigationStack {
            VStack {
                Text("Characters")
                    .font(.title)
                            
                List(viewModel.characters) { character in
                    
                    NavigationLink {
                        CharacterDetailView(viewModel: CharacterDetailViewModel(character: character))
                    } label: {
                        HStack {
                            Text(character.name)
                        }
                    }
                    
                }
            }
        }
        .onAppear(perform: {
            viewModel.viewDidAppear()
        })
        .padding()
    }
}

//#Preview {
//    CharactersListView()
//}
