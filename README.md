# 1FC Trade

A Flutter-based trading login application for **1FC Securities Pvt. Ltd.**,
designed for Android, Web, and Desktop platforms.

The application provides platform-appropriate login experiences while
maintaining a shared Flutter codebase, common branding, reusable
components, and theme support.

---

## Overview

1FC Trade provides separate responsive login experiences for:

- Android / Mobile
- Web
- Windows Desktop
- Large and foldable Android screens

The application automatically selects the appropriate login layout based
on the available screen width.

### Current Features

- Android / Mobile login UI
- Desktop / Web login UI
- Responsive screen-based routing
- Light mode
- Dark mode
- System theme support
- User ID login
- Password with show/hide control
- OTP/TOTP input
- Get OTP action
- Forgot Password action
- Login action
- Open New Account action
- 1FC branding and mascot
- ₹1 brokerage promotional messaging
- NSE/BSE/SEBI information
- Desktop promotional panel
- Responsive layouts
- Reusable login field component
- Poppins typography
- Material 3 UI

---

## Technology Stack

| Technology | Purpose |
|------------|---------|
| Flutter | Cross-platform application framework |
| Dart | Programming language |
| Material 3 | UI framework |
| Google Fonts | Typography |
| Poppins | Primary application font |

---

## Supported Platforms

- Android
- Chrome / Web
- Windows Desktop

---

## Project Structure

```text
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
