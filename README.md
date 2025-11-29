# 📘 Flutter Full Learning Roadmap

![Flutter](https://img.shields.io/badge/Flutter-02569B?style=for-the-badge&logo=flutter&logoColor=white)
![Dart](https://img.shields.io/badge/Dart-0175C2?style=for-the-badge&logo=dart&logoColor=white)
![Status](https://img.shields.io/badge/Status-Active-success?style=for-the-badge)

This repository contains a comprehensive learning roadmap for **Flutter**, covering everything from environment setup to advanced animations and local storage. Each topic includes a breakdown of **what it is** and **where to use it**, designed to guide beginners and intermediate learners through the development process.

---

## 📚 Table of Contents

- [Phase 1: Environment Setup & Architecture](#phase-1-environment-setup--architecture)
- [Phase 2: Dart & Widget Basics](#phase-2-dart--widget-basics)
- [Phase 3: Layouts & Lists](#phase-3-layouts--lists)
- [Phase 4: Styling & Inputs](#phase-4-styling--inputs)
- [Phase 5: Advanced Layouts & State](#phase-5-advanced-layouts--state)
- [Phase 6: Navigation & Projects](#phase-6-navigation--projects)
- [Phase 7: Animations & UI Polish](#phase-7-animations--ui-polish)
- [Phase 8: Data Persistence](#phase-8-data-persistence)

---

## Phase 1: Environment Setup & Architecture

### 1. Introduction To Flutter
- **What is it?** Google’s UI toolkit for building natively compiled apps for mobile, web, and desktop from a single codebase.
- **Where to use it?** When you need fast, cross-platform apps with beautiful UI and native performance.

### 2. Flutter Architecture
- **What is it?** A three-layer architecture: Framework (Dart), Engine (C++ Skia), and Embedder (Platform-specific).
- **Where to use it?** Understanding internal rendering and platform channels.

### 3-8. Development Environment Setup
Detailed guides for setting up your machine.

| OS | Tool | Description |
| :--- | :--- | :--- |
| **Windows** | **SDK Setup** | Setting up Flutter SDK & PATH variables. |
| **Windows** | **VS Code** | Installing Flutter/Dart plugins for a lightweight editor. |
| **macOS** | **SDK Setup** | Configuring SDK and PATH for Mac. |
| **macOS** | **Android Studio** | Required for Android SDK tools and Emulators. |
| **macOS** | **VS Code** | Setup for coding and debugging on Mac. |
| **macOS** | **Xcode** | Required for iOS development and simulators. |

### 9-10. Creating a New Project
- **CLI Command:** `flutter create project_name`
- **VS Code:** Command Palette → "Flutter: New Project" (Faster, UI-based).

### 11. Generated Files Overview
- **What is it?** Overview of `/lib` (code), `/android`, `/ios`, `/web`, and `pubspec.yaml` (dependencies).
- **Where to use it?** Essential for understanding project structure.

### 12. Creating Android Virtual Device (AVD)
- **Use:** Setting up an emulator via Android Studio for testing without a physical phone.

### 13. Running the App
| Platform | Command | Usage |
| :--- | :--- | :--- |
| **Emulator** | `flutter run -d emulator-id` | Android testing |
| **Real Device** | (USB Debugging) | Real hardware performance |
| **iOS Simulator** | Xcode → Run | iOS testing |
| **Web** | `flutter run -d chrome` | Browser apps |
| **Desktop** | `flutter run -d macos/windows` | Desktop apps |

---

## Phase 2: Dart & Widget Basics

### 14. Dart Basics
- **Covers:** Variables, Types, Functions, Classes, Lists, Maps, Loops.
- **Usage:** The foundational logic used everywhere in Flutter.

### 15. Container Widget
- **What is it?** A versatile box model widget for styling, sizing, margin, and padding.
- **Where to use it?** Designing backgrounds, shapes, and wrapping content.

### 16. Text & Styles
- **Use:** Displaying text with specific fonts, colors, and decorations.

### 17. Center Widget
- **Use:** Centers a child widget within the available space.

### 18. Types of Buttons
- **Widgets:** `ElevatedButton`, `TextButton`, `IconButton`, `OutlinedButton`.
- **Use:** Handling user clicks and interactions.

### 19. Adding Images
- **Methods:** `Image.asset` (local) or `Image.network` (remote).
- **Use:** Displaying logos, photos, and graphics.

---

## Phase 3: Layouts & Lists

### 20. Column & Row
- **Use:** Arranging widgets vertically (Column) or horizontally (Row).

### 21. InkWell
- **Use:** Adds a ripple effect on tap; makes any widget clickable.

### 22-23. ScrollViews & ListView
- **What is it?** Makes UI scrollable.
- **Where to use it?** When content exceeds screen height (e.g., chats, feeds, contact lists).

### 24. Decoration (BoxDecoration)
- **Use:** Adding rounded corners, shadows, and gradients to Containers.

### 25. Expanded Widget
- **Use:** Fills available flex space; crucial for responsive Row/Column layouts.

### 26. Padding & Margin
- **Use:** Adding spacing around or outside widgets.

### 27. ListTile
- **Use:** A pre-designed row with a title, subtitle, leading icon, and trailing icon.

### 28. CircleAvatar
- **Use:** Circular images or initials, standard for profile screens.

---

## Phase 4: Styling & Inputs

### 29-30. Fonts & Themes
- **Custom Font:** Loading fonts via `pubspec.yaml`.
- **Themes:** Managing global styles (Light/Dark mode) for the app.

### 31. Card Widget
- **Use:** A Material Design card with elevation and rounded corners.

### 32. TextField
- **Use:** capturing user text input.

### 33-34. Date & Time
- **Logic:** Using `DateTime` and `intl` package.
- **UI:** Using `DatePicker` dialogs for calendar selection.

### 35. GridView
- **Use:** Displaying items in a 2D grid array (like a photo gallery).

---

## Phase 5: Advanced Layouts & State

### 36. Callback Functions
- **Use:** Sending data "up" from a child widget to a parent widget.

### 37-38. Refactoring & Custom Widgets
- **Concept:** Splitting complex code into smaller, reusable widget components.

### 39. Stack & Positioned (45)
- **Stack:** Overlays widgets on top of each other.
- **Positioned:** Controls exactly where a child sits inside a Stack.

### 40. Wrap Widget
- **Use:** Wraps children to the next line when space runs out (like tags/chips).

### 41. SizedBox
- **Use:** Adding fixed spacing or defining specific dimensions.

### 42. RichText
- **Use:** Displaying a single paragraph with multiple styles (e.g., "Terms & **Conditions**").

### 43-44. Icons
- **Widgets:** `Icon` (native) and `FontAwesome` (third-party library).

### 46-47. Stateful vs Stateless
- **Stateless:** Static UI that doesn't change.
- **Stateful:** Dynamic UI that updates via `setState()`.

### 48. Mapping Lists
- **Technique:** Using `.map()` to generate UI widgets dynamically from data lists.

### 49. ConstrainedBox
- **Use:** Applying minimum or maximum size constraints to widgets.

---

## Phase 6: Navigation & Projects

### 50. 🏆 Mini-Project: BMI Calculator
A practice project combining:
- User Input & Calculations
- UI Styling
- Conditional Logic

### 51. Navigation
- **Methods:** `Navigator.push` (go to new screen) & `Navigator.pop` (go back).

### 52. Splash Screen
- **Use:** An intro screen shown while the app initializes.

### 53. Passing Data
- **Technique:** Sending arguments through Widget Constructors during navigation.

---

## Phase 7: Animations & UI Polish

### 54. Range Slider
- **Use:** Selecting a value range between two numbers.

### 55. Gradient Background
- **Use:** Creating smooth color transitions using `BoxDecoration`.

### 56. ClipRRect
- **Use:** Clipping a rectangular widget (like an image) with rounded corners.

### 57-60. Implicit Animations
- **AnimatedContainer:** Easy animation for size/color changes.
- **AnimatedOpacity:** Fade in/out effects.
- **CrossFade:** Smooth switching between two widgets.
- **Hero:** Shared element transitions between screens.

### 61. ListWheelScrollView
- **Use:** A 3D cylindrical scroll view (iOS style picker).

### 62. Tween Animation
- **Use:** Explicit, controlled animations using `AnimationController`.

### 63. Ripple Effect
- **Use:** Custom animations like a growing circle/pulse.

---

## Phase 8: Data Persistence

### 64. Shared Preferences
- **What is it?** A plugin for storing simple key-value data locally on the device.
- **Where to use it?** Persisting small amounts of data even after the app closes.

### 65. Real-Life Use Cases for SharedPref
- ✅ Saving User Name/Profile
- ✅ Storing Login Tokens (Session persistence)
- ✅ Saving Theme Mode (Light/Dark)
- ✅ Saving App Language
- ✅ Checking "First Run" (to show onboarding)

---

## 🤝 Contributing

Feel free to fork this repository and submit pull requests to add more topics or improve examples!

Happy Coding! 🚀