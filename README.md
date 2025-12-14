

HRMS – Employee Management App (Flutter)
A simple HRMS (Human Resource Management System) built with Flutter and Provider for state management. The app allows you to:

View a list of employees
Search employees by name
View employee details
Edit employee information (designation, department, phone)
Architecture
Model: Employee – holds employee data

Provider: EmployeeProvider – manages employee list and updates

Screens:

Employee List (search + navigation)
Employee Detail (profile view)
Edit Employee (form with validation)
State Management: provider package using ChangeNotifier

Prerequisites
Flutter SDK (latest stable)
Dart SDK (comes with Flutter)
Android Studio / VS Code
Google Chrome
Check Flutter installation:

flutter doctor
Setup Instructions
Install dependencies
flutter pub get
Run the app
flutter run
Dependencies Used
dependencies:
  flutter:
    sdk: flutter
  provider: ^6.0.5
Features
Clean UI with Material 3
Search employees by name
Edit employee details with form validation
Reactive UI updates using Provider
Author
Developed as a Flutter project for learning Provider, form handling, and state management.


# hrms_app

A new Flutter project.

## Getting Started

This project is a starting point for a Flutter application.

A few resources to get you started if this is your first Flutter project:

- [Lab: Write your first Flutter app](https://docs.flutter.dev/get-started/codelab)
- [Cookbook: Useful Flutter samples](https://docs.flutter.dev/cookbook)

For help getting started with Flutter development, view the
[online documentation](https://docs.flutter.dev/), which offers tutorials,
samples, guidance on mobile development, and a full API reference.
