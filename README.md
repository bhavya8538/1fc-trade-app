# 1FC Trade

A Flutter-based trading login application for **1FC Securities Pvt.
Ltd.**, designed for Android, Web, and Desktop.

## Overview

1FC Trade provides a shared Flutter codebase with separate mobile and
desktop/web login experiences.

### Current Features

-   Android/mobile login UI
-   Desktop/Web login UI
-   Responsive screen-based routing
-   User ID login
-   Password with show/hide control
-   OTP/TOTP input
-   Get OTP action
-   Forgot Password action
-   Login action
-   Open New Account action
-   1FC branding and mascot
-   ₹1 brokerage/promotional messaging
-   NSE/BSE/SEBI information
-   Desktop promotional panel
-   Responsive layouts


## Technology Stack

  Technology     Purpose
  -------------- --------------------------
  Flutter        Cross-platform framework
  Dart           Programming language
  Material 3     UI framework
  Google Fonts   Typography
  Poppins        Primary font

## Supported Platforms

-   Android
-   Chrome/Web
-   Windows Desktop

## Project Structure

``` text
1FC-TRADE-APP/
├── android/
├── ios/
├── web/
├── windows/
├── assets/
├── lib/
│   ├── main.dart
│   ├── screens/
│   │   └── login/
│   │       ├── login_screen.dart
│   │       └── desktop_login.dart
│   ├── theme/
│   │   └── colors.dart
│   └── widgets/
│       ├── login_field.dart
│       └── member_card.dart
├── test/
├── pubspec.yaml
└── README.md
```

## Responsive Login Architecture

The project uses screen width to select the appropriate UI:

``` dart
final width = MediaQuery.sizeOf(context).width;

if (width >= 700) {
  return const DesktopLogin();
}

return const LoginScreen();
```

### Mobile

``` text
< 700px
   ↓
LoginScreen
```

The existing mobile UI is optimized for Android/touch devices.

### Desktop/Web

``` text
>= 700px
   ↓
DesktopLogin
```

The desktop UI uses a two-panel layout:

``` text
┌──────────────────────────────┬───────────────────────────┐
│                              │                           │
│     1FC Promotional Panel    │       Login Card          │
│                              │                           │
│     Large Mascot             │       Welcome Back        │
│     Trade Smarter.           │       User ID             │
│     Invest Better.           │       Password             │
│                              │       OTP / TOTP           │
│     ₹1 Brokerage              │       Get OTP              │
│     Secure Trading           │       Login                │
│                              │       Open New Account     │
│                              │                           │
└──────────────────────────────┴───────────────────────────┘
```

## Design

Primary page background:

``` text
#F4F4ED
```

Brand color is maintained through:

``` dart
AppColors.primary
```

Typography uses:

``` dart
GoogleFonts.poppinsTextTheme()
```

The desktop promotional panel contains the large mascot, **Trade
Smarter. Invest Better.** messaging, decorative financial graphics, and
feature information.

## Assets

Typical assets include:

``` text
assets/
└── images/
    ├── logo.png
    └── mascot4.png
```

Register assets in `pubspec.yaml`:

``` yaml
flutter:
  assets:
    - assets/images/
```

## Getting Started

### Requirements

Install:

-   Flutter SDK
-   Android Studio for Android development
-   Chrome for Web
-   Visual Studio with Desktop development with C++ for Windows

Check the environment:

``` powershell
flutter doctor
```

### Install dependencies

``` powershell
flutter pub get
```

## Running the Application

### Android

``` powershell
flutter devices
flutter run
```

Or:

``` powershell
flutter run -d <device-id>
```

### Chrome

``` powershell
flutter run -d chrome
```

### Windows

``` powershell
flutter run -d windows
```

## Building

### Web

``` powershell
flutter build web
```

Output:

``` text
build/web/
```

### Windows

``` powershell
flutter build windows
```

### Android Debug APK

``` powershell
flutter build apk --debug
```

### Android Release APK

``` powershell
flutter build apk --release
```

## Login Components

### User ID

Trading account user ID input.

### Password

Password input with visibility toggle.

### OTP / TOTP

OTP/TOTP input with a separate **Get OTP** button.

### Actions

-   Login
-   Forgot Password
-   Open New Account

## Regulatory/Footer Information

The application displays:

``` text
NSE Member Code: 90120
BSE Member Code: 6694
SEBI Regn. No.: INZ000158323
```

and:

``` text
© 2026 1FC Securities Pvt. Ltd. All Rights Reserved.
Version 1.0.0
```

The regulatory information is intentionally kept visually secondary to
the login form.

## Keyboard Handling

For the desktop-style layout on large/foldable Android screens, the UI
can prevent keyboard insets from resizing the composition:

``` dart
resizeToAvoidBottomInset: false,
```

and, where required:

``` dart
MediaQuery.removeViewInsets(
  context: context,
  removeBottom: true,
  child: ...
)
```

The intention is to keep the desktop composition fixed when the keyboard
opens.

## Development Guidelines

Keep the mobile and desktop UI separate:

``` text
login_screen.dart
    ↓
Mobile UI

desktop_login.dart
    ↓
Desktop/Web UI
```

Business logic should eventually be shared through services rather than
duplicated inside both screens.

Recommended future structure:

``` text
lib/
├── services/
│   ├── auth_service.dart
│   ├── otp_service.dart
│   └── api_service.dart
├── models/
├── screens/
│   └── login/
│       ├── login_screen.dart
│       └── desktop_login.dart
└── widgets/
```

## Future Development

Possible next steps:

-   Real authentication API
-   OTP API
-   TOTP authentication
-   Forgot password flow
-   Open account flow
-   Session management
-   Secure token storage
-   Validation and error states
-   Loading states
-   Trading dashboard
-   Portfolio
-   Orders
-   Positions
-   Funds
-   Profile
-   Accessibility
-   Dark mode

## Troubleshooting

Clean and rebuild:

``` powershell
flutter clean
flutter pub get
flutter run
```

Check Flutter:

``` powershell
flutter doctor -v
```

Check devices:

``` powershell
flutter devices
```

Verbose run:

``` powershell
flutter run -v
```

For Android Gradle failures, verify the configured JDK, Android SDK,
build-tools, Gradle/AGP compatibility, and connected device/emulator.

## Architecture Goal

``` text
                 ONE FLUTTER PROJECT
                         │
              ┌──────────┴──────────┐
              │                     │
           Android             Web/Desktop
              │                     │
        Mobile Login          Desktop Login
              │                     │
              └──────────┬──────────┘
                         │
                  Shared Services
                         │
              Authentication / APIs
```

The goal is to maintain one codebase while providing
platform-appropriate UI.

## Version

``` text
1FC Trade
Version 1.0.0
© 2026 1FC Securities Pvt. Ltd.
```

## License

This project is intended for use by **1FC Securities Pvt. Ltd.**
Unauthorized distribution, modification, or commercial reuse should
follow the organization's internal policies and applicable agreements.
