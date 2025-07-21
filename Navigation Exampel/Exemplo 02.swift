//
//  Exemplo 02.swift
//  Navigation Exampel
//
//  Created by Daniel Araujo Nobre on 21/07/25.
//  Navegação programática com Binding

import SwiftUI

struct Exemplo02: View {
    @State private var isActive = false

    var body: some View {
        NavigationStack {
            VStack {
                Text("Tela Inicial")
                Button("Ir para Detalhes") {
                    isActive = true
                }
                .navigationDestination(isPresented: $isActive) {
                    DetailView()
                }
            }
        }
    }
}

#Preview {
    Exemplo02()
}

/// Explicação
///
/// - @State var isActive controla se a navegação deve ocorrer.
///
/// - .navigationDestination(isPresented:) permite ativar a navegação programaticamente.

