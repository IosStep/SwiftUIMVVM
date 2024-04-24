//
//  SwiftUIMVVMShowcaseApp.swift
//  SwiftUIMVVMShowcase
//
//  Created by Aldiyar Aitpayev on 24.04.2024.
//

import SwiftUI

@main
struct SwiftUIMVVMShowcaseApp: App {
    var body: some Scene {
        WindowGroup {
            
            CharactersListView(viewModel: CharactersListViewModel())
        }
    }
}
