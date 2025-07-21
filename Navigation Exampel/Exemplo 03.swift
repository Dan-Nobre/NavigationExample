//
//  Exemplo 03.swift
//  Navigation Exampel
//
//  Created by Daniel Araujo Nobre on 21/07/25.
//  Navegação com Dados (como ID, nome etc.)

import SwiftUI

struct Item: Identifiable, Hashable {
    let id = UUID()
    let nome: String
}

struct Exemplo03: View {
    let itens = [
        Item(nome: "Item A"),
        Item(nome: "Item B")
    ]

    var body: some View {
        NavigationStack {
            List(itens, id: \.self) { item in
                NavigationLink(value: item) {
                    Text(item.nome)
                }
            }
            .navigationDestination(for: Item.self) { item in
                DetailsView(item: item)
            }
            .navigationTitle("Itens")
        }
    }
}

struct DetailsView: View {
    var item: Item

    var body: some View {
        Text("Detalhes de \(item.nome)")
            .navigationTitle(item.nome)
    }
}

#Preview {
    Exemplo03()
}


/// Explicação:
///
///  - NavigationLink(value:) envia um valor para a próxima tela.
///
///  - .navigationDestination(for:) define o destino com base no tipo do valor.
