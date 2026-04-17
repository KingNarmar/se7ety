# Se7ety - Flutter Session 25

A clean and modular Flutter application for a healthcare-oriented user flow, built as part of **Session 25** in my Flutter course.

This session focuses on building the complete **entry experience** of the application, starting from the splash screen, passing through onboarding, then the welcome screen, and finally reaching the authentication screens for different user types.

---

## Overview

**Se7ety** is a healthcare app UI flow that allows the user to:

- Start from a branded splash screen
- View a multi-page onboarding experience
- Choose the user type from the welcome screen
- Navigate to authentication screens based on the selected role
- Use reusable UI components with a better organized project structure

The project is built with a **feature-first structure** and includes reusable widgets, centralized styles, routing, and state management for the onboarding flow.

---

## Session 25 Goal

The main goal of this session was to implement the full **welcome and authentication entry flow** with a cleaner structure and better reusability.

### What was implemented in this session

- Splash screen with delayed navigation
- Onboarding flow with multiple pages
- Page indicator for onboarding
- Next / Get Started button logic
- Welcome screen with user type selection
- Passing selected user type through navigation
- Register screen UI
- Login screen UI
- Reusable user type card widget
- Reusable button and text field widgets
- Organized onboarding feature into:
  - data
  - presentation
  - cubit
  - widgets

---

## Features

### 1. Splash Screen
- Displays the app logo
- Automatically navigates to the onboarding screen after a short delay

### 2. Onboarding Flow
- Built using `PageView`
- Contains 3 onboarding pages
- Uses `Cubit` to track the current page
- Shows a custom indicator
- Changes button text on the last page
- Navigates to the welcome screen when onboarding is completed

### 3. Welcome Screen
- Introduces the app to the user
- Lets the user choose whether to continue as:
  - Doctor
  - Patient
- Sends the selected role to the next screen through routing

### 4. Authentication Screens
#### Register Screen
- User name field
- Email field
- Password field
- Reusable auth footer

#### Login Screen
- Email field
- Password field
- Forgot password text
- Google login placeholder button
- Reusable auth footer

### 5. Reusable Core Components
- `AppButton`
- `CustomTextFormField`
- `PasswordTextFormField`
- Shared text styles
- Shared app colors
- Shared navigation helpers

---

## Tech Stack

- **Flutter**
- **Dart**
- **flutter_bloc**
- **go_router**
- **flutter_svg**
- **gap**
- **flutter_localizations**

---

## Project Structure
``text
lib/
├── app_root/
│   └── app_root.dart
│
├── core/
│   ├── constants/
│   │   ├── app_fonts.dart
│   │   └── app_images.dart
│   ├── functions/
│   │   └── navigations.dart
│   ├── routes/
│   │   └── routes.dart
│   ├── styles/
│   │   ├── app_colors.dart
│   │   └── text_styles.dart
│   └── widgets/
│       ├── app_button.dart
│       ├── custom_text_form_field.dart
│       └── password_text_form_field.dart
│
├── features/
│   ├── auth/
│   │   ├── login/
│   │   │   └── login_screen.dart
│   │   ├── register/
│   │   │   └── register_screen.dart
│   │   └── widgets/
│   │       └── auth_footer.dart
│   │
│   └── welcome/
│       ├── splash/
│       │   └── screens/
│       │       └── splash_screen.dart
│       ├── welcome/
│       │   ├── screens/
│       │   │   └── welcome_screen.dart
│       │   └── widgets/
│       │       └── user_type_card.dart
│       └── on_boarding/
│           ├── data/
│           │   └── models/
│           │       └── on_boarding_model.dart
│           └── presentation/
│               ├── cubit/
│               │   ├── on_boarding_cubit.dart
│               │   └── on_boarding_state.dart
│               ├── screens/
│               │   └── on_boarding_screen.dart
│               └── widgets/
│                   ├── onboarding_indicator.dart
│                   └── onboarding_page_content.dart
│
└── main.dart
```
---

## Navigation Flow

The current app flow is:

**Splash Screen**
→ **Onboarding**
→ **Welcome Screen**
→ **Register / Login**

Routing is handled using **GoRouter**, and the selected user type is passed using `extra`.

Example:
- If the user taps **Doctor**, the register screen opens with doctor-specific text
- If the user taps **Patient**, the register screen opens with patient-specific text

---

## State Management

The onboarding flow uses **Cubit** to manage:

- Current page index
- Last page detection
- UI updates for indicator and button text

This keeps the onboarding logic separated from the UI and makes the screen easier to maintain.

---

## Reusability Improvements

This session also improved code organization by extracting reusable parts into separate widgets and folders.

### Reusable widgets used
- `AppButton`
- `CustomTextFormField`
- `PasswordTextFormField`
- `AuthFooter`
- `UserTypeCard`
- `OnboardingIndicator`
- `OnboardingPageContent`

This makes the code:
- more readable
- easier to maintain
- easier to scale later

---

## Localization & UI Direction

The app is currently configured to use:

- Arabic locale
- Cairo font
- RTL-friendly content and design direction

This makes the UI more suitable for Arabic-speaking users.

---

## Current Notes

This version mainly focuses on the **UI flow and navigation structure**.

### Currently completed
- Screen design
- Routing
- Onboarding state management
- Reusable widgets
- Role-based navigation

### Can be added later
- Form validation
- Backend integration
- Authentication logic
- Doctor / patient specific flows
- Social login functionality
- Forgot password functionality

---

## Screenshots

| Splash Screen | Welcome Screen |
|---|---|
| ![](screen_shots/splash_screen.png) | ![](screen_shots/welcom.png) |

| Onboarding 1 | Onboarding 2 |
|---|---|
| ![](screen_shots/on_boarding1.png) | ![](screen_shots/on_boarding2.png) |

| Onboarding 3 | Register Screen |
|---|---|
| ![](screen_shots/on_boarding3.png) | ![](screen_shots/register.png) |

| Login Screen |
|---|
| ![](screen_shots/login.png) |

---

## What I Learned in This Session

Through this session, I practiced:

- Structuring Flutter features in a cleaner way
- Separating UI from logic using Cubit
- Building onboarding flows with `PageView`
- Using `GoRouter` for cleaner navigation
- Passing data between screens
- Creating reusable UI components
- Improving code readability and maintainability

---

## Conclusion

Session 25 was an important step in building the app foundation.

It helped me create a cleaner and more scalable structure for the early user journey of the app, while also improving the reusability of shared components and keeping the code more organized for future development.

---