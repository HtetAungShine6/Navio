# Navio 🧭

**Navio** is a lightweight, type-safe, and elegant navigation coordinator for SwiftUI, built on top of `NavigationStack`.

It provides a clean API for managing push/pop/reset navigation using a central coordinator and route enum. Navio is ideal for developers who want structure without sacrificing SwiftUI’s declarative style.

---

## ✨ Features

- Seamless navigation with the `@Navio` property wrapper
- Centralized route-based navigation using `NavioCoordinator`
- Clear separation of navigation logic from view content
- Works out of the box with `NavigationStack`
- Supports push, pop, and reset operations
- Easy to extend for modal navigation, sheets, and deep linking
- Compatible with Combine and the new Swift Testing framework

---

## 🔧 Installation

Navio supports Swift Package Manager.

You can add it to your Xcode project by selecting:
**File > Add Packages…** and entering your GitHub repo URL. (https://github.com/HtetAungShine6/Navio.git)

---

## 🚀 Use Cases

- **Centralized Navigation Control**  
  Define your routes in a single enum and manage navigation from any view or view model using the coordinator.

- **Type-safe Navigation**  
  Prevent navigation bugs by using enum cases with associated values instead of string-based identifiers or paths.

- **Modular Screen Management**  
  Easily switch between screens like Home, Profile, or Settings without hardcoding navigation logic inside views.

- **MVVM-C Friendly**  
  Cleanly separates view logic, state, and routing — ideal for apps following MVVM or MVVM-C architecture.

- **Deep Linking** *(Coming Soon)*  
  Extend your route enum to parse incoming URLs and push the appropriate screen dynamically.

- **Reset Navigation Stack**  
  Clear and rebuild the navigation path when changing flows (e.g., after onboarding or logout).

- **Testing-Friendly**  
  Push routes and observe changes in the coordinator to verify screen flows during unit testing.

---

## 📦 Package Structure

- `Navio.swift` – Defines the `@Navio` property wrapper for injecting the coordinator
- `NavioCoordinator.swift` – Manages the navigation stack and provides push/pop/reset methods
- `NavioView.swift` – Wraps `NavigationStack` and maps routes to destination views

---

## 💻 Example Usage

I linked down below of my github repo how I used Navio. ⬇️
[View Source](https://github.com/HtetAungShine6/Navio-Test-SwiftUI-App.git)


## 📃 License

MIT © [Htet Aung Shine]

---

## 🙌 Contributions

Contributions, feedback, and feature requests are welcome.  
Feel free to open an issue or pull request to help make Navio even better.

---

Let's build a cleaner navigation future for SwiftUI apps. 🚀
