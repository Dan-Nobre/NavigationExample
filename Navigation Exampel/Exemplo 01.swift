//
//  ContentView.swift
//  Navigation Exampel
//
//  Created by Daniel Araujo Nobre on 21/07/25.
//  Navegação simples com NavigationStack e NavigationLink

import SwiftUI


//MARK: Nessa parte do código é onde iremos chamar nosso navigationLink para criar uma navegação.

struct Exemplo01: View {
    var body: some View {
        NavigationStack {
            VStack {
                Text("Tela Inicial")
                    .font(.largeTitle)

                NavigationLink("Ir para Detalhes") {
                    DetailView()
                }
                .padding()
            }
            .navigationTitle("Home")
        }
    }
}


//MARK: Aqui é onde irão os detalhes da sua próxima tela, elas ficam geralmente em outro arquivo .swift nesse caso deixei aqui para facilitar a visualização e edição

struct DetailView: View {
    var body: some View {
        VStack {
            Text("Tela de Detalhes")
                .font(.title)
        }
        .navigationTitle("Detalhes")
    }
}


#Preview {
    Exemplo01()
}

/// Explicação:
///
/// - NavigationStack mantém um histórico de navegação (como uma pilha).
///
/// - NavigationLink empilha uma nova view na pilha.
///
/// - .navigationTitle define o título da barra de navegação.
