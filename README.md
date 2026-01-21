# Chronos: Longevity & Performance App ⏳

[![Flutter](https://img.shields.io/badge/Flutter-3.19+-02569B?logo=flutter)](https://flutter.dev)
[![Dart](https://img.shields.io/badge/Dart-3.0+-0175C2?logo=dart)](https://dart.dev)
[![Style](https://img.shields.io/badge/style-very__good__analysis-B22C11.svg)](https://pub.dev/packages/very_good_analysis)
[![License: MIT](https://img.shields.io/badge/License-MIT-yellow.svg)](https://opensource.org/licenses/MIT)

> **Chronos** é um Personal Trainer Virtual "Offline-First" projetado para o público 40+. Focado em longevidade, acessibilidade e performance nativa.

## 📱 Visão Geral do Produto

Diferente de apps focados puramente em estética ou HIIT agressivo, o Chronos utiliza **Clean Architecture** para entregar uma experiência fluida, sem falhas e adaptada para usuários que buscam saúde a longo prazo.

**Diferenciais Técnicos:**
* **Offline-First:** Sincronização robusta usando Isar Database e CRDTs. Funciona 100% sem internet.
* **Acessibilidade (A11y):** Tipografia dinâmica, alto contraste (WCAG 2.1 AA) e feedback háptico.
* **Performance:** Renderização otimizada para manter 60-120fps via engine Impeller.

## 🏗 Arquitetura

Este projeto segue estritamente os princípios da **Clean Architecture** (Robert C. Martin), garantindo a independência de frameworks, testabilidade e separação de responsabilidades.

```mermaid
graph TD
    UI[Presentation Layer<br>(Flutter Widgets & BLoC)] --> Domain[Domain Layer<br>(Entities & UseCases)]
    Data[Data Layer<br>(Repositories & DataSources)] --> Domain
    Data --> Remote[API / Firebase]
    Data --> Local[Isar Database]
