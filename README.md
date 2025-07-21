
<img width="6336" height="1584" alt="Navegação entre telas2" src="https://github.com/user-attachments/assets/26f56058-088c-4466-b012-9977f79f0a68" />

# 📱 Guia de Navegação no SwiftUI

Bem-vindo ao **Guia de como utilizar Navegação no SwiftUI**!  
Este repositório demonstra como implementar diferentes padrões de navegação no SwiftUI, incluindo navegação baseada em pilha e navegação modal (como sheets), utilizando os recursos mais recentes disponíveis a partir do iOS 16.

---

## 🧭 Índice

- [Introdução](#introdução)
- [Requisitos](#requisitos)
- [1. NavigationLink (Simples)](#1-navigationlink-simples)
- [2. Navegação Programática](#2-navegação-programática)
- [3. Passando Dados entre Telas](#3-passando-dados-entre-telas)
- [4. Navegação Modal (Sheets)](#4-navegação-modal-sheets)
- [5. Capturas de Tela](#5-capturas-de-tela)
- [6. Créditos](#6-créditos)

---

## 🧩 Introdução

Este projeto explica como navegar entre telas utilizando:

- `NavigationStack` e `NavigationLink`
- `navigationDestination(isPresented:)`
- `navigationDestination(for:)` com tipos de valor
- Modais com `.sheet`

Cada exemplo está isolado em um arquivo com comentários explicativos.

---

## ✅ Requisitos

- Xcode 14 ou superior  
- iOS 16 ou superior  
- Swift 5.7+

---

## 1. NavigationLink (Simples)

Navegação básica utilizando `NavigationLink` dentro de um `NavigationStack`.

📁 Arquivo: `Exemplo 01.swift`

```swift
NavigationStack {
    NavigationLink("Ir para Detalhes") {
        DetailView()
    }
}
