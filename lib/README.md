# HRMS – Employee Management App (Flutter)

A simple **HRMS (Human Resource Management System)** built with **Flutter** and **Provider** for state management. The app allows you to:

* View a list of employees
* Search employees by name
* View employee details
* Edit employee information (designation, department, phone)

## Architecture

* **Model**: `Employee` – holds employee data
* **Provider**: `EmployeeProvider` – manages employee list and updates
* **Screens**:

    * Employee List (search + navigation)
    * Employee Detail (profile view)
    * Edit Employee (form with validation)
* **State Management**: `provider` package using `ChangeNotifier`

---

## Getting Started

### Prerequisites

* Flutter SDK (latest stable)
* Dart SDK (comes with Flutter)
* Android Studio / VS Code
* Google Chrome

Check Flutter installation:

```bash
flutter doctor
```

---

## Setup Instructions

2. **Install dependencies**

```bash
flutter pub get
```

3. **Run the app**

```bash
flutter run
```

## Dependencies Used

```yaml
dependencies:
  flutter:
    sdk: flutter
  provider: ^6.0.5
```

---

## Features

* Clean UI with Material 3
* Search employees by name
* Edit employee details with form validation
* Reactive UI updates using Provider

# Author

Developed as a Flutter project for learning **Provider**, **form handling**, and **state management**.


