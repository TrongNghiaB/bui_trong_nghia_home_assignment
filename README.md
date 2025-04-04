# 🏠 Bui Trong Nghia - Home Assignment

A cleanly architected Flutter project demonstrating scalable app development practices using modern tools and patterns. This project emphasizes maintainability, testability, and developer experience.

---

## 📱 Project Overview

This app is structured with modularity and scalability in mind. It leverages advanced Flutter development techniques such as:

- Declarative UI with **Flutter**
- **Hooks + Riverpod** for reactive state management
- **AutoRoute** for elegant, type-safe routing
- **Dio** for robust API handling
- **Freezed** and **JsonSerializable** for clean data modeling
- **Geolocator** and **Geocoding** for location-based features
- Environment variable support with **flutter_dotenv**
- Functional programming utilities with **Dartz**

---

## 🧱 Project Architecture

The project follows a **Clean Architecture** pattern to ensure separation of concerns. Layers are divided into:

- **Presentation** (UI layer with Hooks + Riverpod)
- **Application / State Management** (ViewModels / Providers)
- **Domain** (entities)
- **Data** (repositories, APIs, models)

This layered approach allows easy testing and low coupling between modules.

---

## 🚀 Core Libraries & Frameworks

| Category              | Package             | Description |
|-----------------------|---------------------|-------------|
| **State Management**  | `hooks_riverpod`    | Combines the power of Riverpod with Flutter Hooks for more concise state handling. |
| **Networking**        | `dio`               | Powerful HTTP client with interceptors and request cancellation support. |
| **Routing**           | `auto_route`        | Declarative, type-safe routing with nested routes support. |
| **Code Generation**   | `freezed`, `json_serializable` | Immutable data classes and automatic serialization/deserialization. |
| **Location Services** | `geolocator`, `geocoding` | Access device location and convert coordinates to addresses. |
| **Utilities**         | `dartz`             | Functional programming patterns like `Either`, `Option`, etc. |
| **Environment Config**| `flutter_dotenv`    | Load `.env` configuration into app runtime. |
| **Logging**           | `logger`            | Pretty, structured logging for easier debugging. |

---

## 🛠️ Dev Tools

| Tool | Description |
|------|-------------|
| `flutter_gen` | Generates assets, fonts, and colors from configuration. |
| `build_runner` | Code generation runner. |
| `mocktail` | Mocking framework for unit testing. |
| `flutter_test`, `flutter_lints` | Testing and linting tools. |

---

## 📂 Folder Structure (High-Level)

