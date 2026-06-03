# Budget Tracker (Flutter) ✅

**A simple and lightweight personal finance companion built with Flutter.**

---

## Overview

Budget Tracker is a Flutter application that helps users create budgets, track daily expenses, and visualize spending patterns with simple charts and statistics. It is designed for easy local usage with a minimal setup — no backend required.

## Project Structure 📁

- `lib/` — Main application source code
  - `json/` — Models and local JSON storage helpers
  - `pages/` — App screens (budget, daily, profile, stats)
  - `widget/`, `theme/` — Reusable widgets and theme definitions
- `assets/` — Images and icons
- `android/`, `ios/`, `web/`, `windows/`, `macos/`, `linux/` — Platform-specific code and build files
- `test/` — Unit and widget tests

## Features

- **Create, edit, and delete budgets** (monthly or custom)
- **Track daily income and expenses**
- **Visualize spending** with charts and summary statistics
- **Local JSON-based storage** for simple export/import and offline use
- **Responsive UI** for Android, iOS, web, and desktop platforms (where supported)

## Tech Stack

- Flutter (Dart)
- Uses local JSON files and standard Flutter packages

## Getting Started 🔧

### Prerequisites

- Install Flutter SDK: https://flutter.dev/docs/get-started/install
- (Optional) Android Studio / Xcode for emulators or device builds

### Run locally

1. Clone the repository
   ```bash
   git clone <your-repo-url>
   cd Budget_Tracker
   ```
2. Install dependencies
   ```bash
   flutter pub get
   ```
3. Run the app
   ```bash
   flutter run
   ```

### Build

- Build an Android APK:
  ```bash
  flutter build apk --release
  ```
- Build for iOS (macOS required):
  ```bash
  flutter build ios --release
  ```

**Enjoy using Budget Tracker!** 🎉
