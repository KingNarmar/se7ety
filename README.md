# Se7ety App

Se7ety is a Flutter application built as part of **Session 25** in my Flutter course.  
This session focused on creating the complete entry flow of the app, starting from the splash screen, passing through onboarding, then the welcome screen, and finally reaching the authentication screens.

The project is organized in a clean and modular way using a **feature-based structure**, with reusable widgets, centralized styling, named routing, and Cubit for onboarding state management.

---

## Session 25 Scope

In this session, I implemented the main user entry journey of the application, including:

- Splash screen
- Onboarding flow
- Welcome screen
- Register screen
- Login screen
- Reusable UI components
- Routing between screens
- User type selection flow
- Onboarding state management using Cubit

---

## Features

### Splash Screen

- Displays the application logo
- Waits for a short duration before navigating automatically
- Clears the navigation stack and moves to the onboarding flow

### Onboarding Flow

- Built using `PageView`
- Contains 3 onboarding pages
- Uses `Cubit` to track the current page
- Shows a custom page indicator
- Changes button behavior based on the current page
- Navigates to the welcome screen after the last onboarding page

### Welcome Screen

- Introduces the app to the user
- Allows the user to choose their role:
  - Doctor
  - Patient
- Navigates to the register screen with the selected user type

### Register Screen

- Displays dynamic text based on the selected user type
- Contains:
  - Username field
  - Email field
  - Password field
- Includes a reusable bottom auth footer

### Login Screen

- Displays dynamic user text through route preparation
- Contains:
  - Email field
  - Password field
  - Forgot password button
  - Google button placeholder
- Includes a reusable bottom auth footer

### Reusable Components

The project includes reusable core widgets to reduce duplication and improve code organization, such as:

- Custom button
- Custom text form field
- Password field widget
- Auth footer
- User type card
- Onboarding indicator
- Onboarding page content widget

---

## Tech Stack

- Flutter
- Dart
- flutter_bloc
- go_router
- flutter_svg
- gap
- flutter_localizations

---

## Project Structure

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

---

## Navigation Flow

The current flow of the app is:

**Splash Screen**  
→ **Onboarding**  
→ **Welcome Screen**  
→ **Register Screen**  
→ **Login Screen**

Routing is handled using `GoRouter`.

---

## State Management

The onboarding flow uses `Cubit` to manage:

- Current page index
- Last page detection
- Rebuilding the indicator and button section when the page changes

This keeps the onboarding logic separate from the UI and makes the code easier to maintain.

---

## UI and Localization

- The app is currently configured with **Arabic locale**
- The UI uses the **Cairo** font
- The structure is prepared for an Arabic user experience
- The design follows a simple and clean healthcare-oriented style

---

## Code Quality Highlights

During this session, I focused on:

- Organizing the project into features
- Extracting reusable widgets
- Keeping styles centralized
- Separating logic from UI where needed
- Making the code easier to read and extend later

---

## Current Status

### Completed

- Splash screen UI and navigation
- Onboarding screens and page transitions
- Onboarding indicator
- Welcome screen
- Doctor / Patient selection
- Register screen UI
- Login screen UI
- Reusable shared widgets
- Routing setup
- Onboarding Cubit

### Planned for Future Sessions

- Form validation
- Real authentication logic
- Backend integration
- Forgot password flow
- Google sign-in integration
- Doctor and patient specific app flows

---

## Screenshots

| Splash Screen | Onboarding 1 | Onboarding 2 | Onboarding 3 |
|---|---|---|---|
| <img src="screen_shots/splash_screen.png" width="250"/> | <img src="screen_shots/on_boarding1.png" width="250"/> | <img src="screen_shots/on_boarding2.png" width="250"/> | <img src="screen_shots/on_boarding3.png" width="250"/> |

| welcom | Register Screen | Login Screen |
|---|---|---|
| <img src="screen_shots/welcom.png" width="250"/> | <img src="screen_shots/register.png" width="250"/> | <img src="screen_shots/login.png" width="250"/> |

---

## What I Learned

Through this session, I practiced:

- Building a complete app entry flow
- Using `GoRouter` for navigation
- Passing data between screens
- Managing onboarding state with `Cubit`
- Structuring Flutter code in a modular way
- Creating reusable widgets for cleaner code

---

## Conclusion

Session 25 was an important step in building the foundation of the Se7ety app.

It helped me create a better structured Flutter project with a complete entry flow, reusable components, and cleaner navigation between screens. This makes the project easier to maintain and gives a strong base for future development.

---
