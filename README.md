# Flutter Template

A Flutter template designed to quickstart application development with a clean, feature-based architecture.

## Architecture & Folder Structure

The project follows a feature-driven layered architecture.

```text
lib/
├── core/                # Core utilities, base classes, and app-wide logic
│   ├── application/     # Global business logic (blocs, services)
│   └── presentation/    # Global UI components (themes, layout)
├── features/            # Feature-specific modules
│   ├── home/            # Home feature
│   │   ├── application/
│   │   └── presentation/
│   ├── profile/         # Profile feature
│   │   ├── application/
│   │   └── presentation/
│   └── startup/         # Splash and initialization
│       ├── application/
│       └── presentation/
├── l10n/                # Localization files
├── shared/              # Shared components across features
│   ├── extensions/      # Dart/Flutter extensions
│   └── presentation/    # Shared widgets
├── app.dart             # App widget & configuration
└── main.dart            # Entry point
```

## Key Packages

- **State Management**: [flutter_bloc](https://pub.dev/packages/flutter_bloc) & [bloc](https://pub.dev/packages/bloc)
- **Routing**: [go_router](https://pub.dev/packages/go_router)
- **Dependency Injection**: [get_it](https://pub.dev/packages/get_it)
- **Boilerplate reduction**: [equatable](https://pub.dev/packages/equatable)

## Getting Started

1. **Install dependencies**: `flutter pub get`
2. **Run the app**: `flutter run`
3. **Generate files** (if using build_runner): `dart run build_runner build --delete-conflicting-outputs`

For more advanced setup, refer to the [Flutter documentation](https://docs.flutter.dev/).
