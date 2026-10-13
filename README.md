# Boardmap

## Summary
Boardmap helps users find and explore places on a map. The first screens are the Home page (hero, nav bar, feature cards) and the Login page, wired together with named navigation as the runnable baseline of the semester project.

## Current stack
- Implemented now: Flutter Web / Dart (UI, widgets, navigation, forms).
- Planned only: REST API (FastAPI, instructor-approved) and PostgreSQL (IT 108) for business rules and persistence. No backend is called at Activity 8.

## Screens
- Home (`/`): dark green app bar with Home / Map / About / Login links, hero title and tagline, Open Map button, Explore Map / Saved Places / Get Directions cards, footer.
- Login (`/login`): light green page with a white sign-in card (email, password, Login button, Register link) and project footer.

## Source structure
```
lib/
├── main.dart        # entry point
├── app.dart         # MaterialApp, theme, routes
├── screens/         # home_screen.dart, login_screen.dart
├── widgets/         # app_button.dart, app_text_field.dart, app_nav_link.dart, feature_card.dart
├── services/        # api_client.dart (planned REST client)
├── models/          # JSON model classes (empty at Activity 8)
├── routes/          # app_routes.dart route names and map
└── constants/       # app_constants.dart, app_colors.dart
```

## Run locally
```
flutter pub get
flutter run -d chrome
```
Use a second terminal for later commands while `flutter run` is active; `Ctrl+C` stops the session.

## Verify
```
flutter doctor
flutter devices
flutter analyze
flutter test
```

## First checkpoint
Date: __________ | Commit: __________
