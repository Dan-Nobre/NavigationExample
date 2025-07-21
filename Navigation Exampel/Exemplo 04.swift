//
//  Exemplo04.swift
//  Navigation Exampel
//
//  Created by Daniel Araujo Nobre on 21/07/25.
//  Navegação com modais

import SwiftUI

struct Exemplo04: View {
    @State private var showingSheet = false
    
    var body: some View {
        Button("Abrir Sheet") {
            showingSheet = true
        }
        .sheet(isPresented: $showingSheet) {
            Text("Conteúdo do Sheet")
        }

    }
}

#Preview {
    Exemplo04()
}
