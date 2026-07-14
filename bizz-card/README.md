# BizzCard

A simple Flutter business card application that displays personal information in a clean profile-style layout.

## Features

- AppBar with the title **BizzCard**
- Blue accent AppBar background
- Circular profile picture loaded from local assets
- Displays first name, last name, age, phone number, and email
- Reusable custom widgets for profile and info rows
- Tappable profile image and QR image
- Portfolio link opening with `url_launcher`
- Notification dialog and popup menu actions
- Uses local assets for images

## Project structure

```text
lib/
  main.dart
  pages/
    bizzcard_page.dart
  widgets/
    bizzcard_appbar.dart
    info_row.dart
    profile_section.dart
  dialogs/
    about_dialog.dart
    contact_dialog.dart
    notifications_dialog.dart
  services/
    portfolio_launcher.dart
```

## Entry point

The application starts from `lib/main.dart`.

```dart
void main() {
  runApp(const BizzCardApp());
}
```

`runApp()` launches the root widget of the app, which is `BizzCardApp`.

## Main widgets

### `BizzCardApp`
The root widget of the application. It returns a `MaterialApp` and sets `BizzCardPage` as the home screen.

### `BizzCardPage`
The main page of the app. It contains:
- The custom AppBar
- Profile image
- Name and personal details
- QR/portfolio image
- Button to open the portfolio

### `BizzCardAppBar`
A custom AppBar widget placed in a separate file to keep the page clean. It includes:
- Notification icon
- Three-dot popup menu
- Actions for About, Contact info, and Portfolio

### `InfoRow`
A reusable widget for showing an icon with text, used for phone and email.

### `ProfileSection`
A reusable widget that displays the profile image using `CircleAvatar`.

## Services

### `portfolio_launcher.dart`
Contains the `openPortfolio()` function.

```dart
Future<void> openPortfolio() async {
  final Uri url = Uri.parse('https://fahd-aguenouz.vercel.app/');

  if (!await launchUrl(url, mode: LaunchMode.externalApplication)) {
    throw Exception('Could not launch $url');
  }
}
```

This function opens the portfolio link in the external browser.

## Dialogs

The app uses separate dialog files to keep logic organized:

- `about_dialog.dart` — shows app information
- `contact_dialog.dart` — shows phone and email
- `notifications_dialog.dart` — shows sample notifications

## Assets

The app uses local assets declared in `pubspec.yaml`:

```yaml
flutter:
  uses-material-design: true
  assets:
    - assets/images/
```

Example assets:
- `assets/images/profile.jpg`
- `assets/images/portfolio.png`

## Dependencies

Main dependency used:

```yaml
dependencies:
  flutter:
    sdk: flutter
  cupertino_icons: ^1.0.8
  url_launcher: ^6.3.2
```

- `flutter` is the main SDK
- `cupertino_icons` provides iOS-style icons
- `url_launcher` is used to open the portfolio link

## How to run

1. Open the project folder.
2. Install dependencies:

```bash
flutter pub get
```

3. Run the app:

```bash
flutter run
```

For Linux desktop:

```bash
flutter run -d linux
```

## Notes

- The mandatory part uses standard Flutter widgets.
- `url_launcher` is used for the bonus portfolio action.
- The code is split into pages, widgets, dialogs, and services for better readability and maintainability.