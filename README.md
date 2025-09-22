# 💼 Portfolio App – Showcasing My Work & Skills as a Flutter Developer

**Status:** Demo – 2025
**Repository:** [github.com/elsaramji/portfolio_app](https://github.com/elsaramji/portfoilosr)
**Live Demo:** Coming Soon!

---

## 📱 Overview

**Portfolio App** is a professional cross-platform mobile application built with Flutter to present my profile as a software engineer. It serves as an interactive portfolio, highlighting my personal information, experience, technical skills, and selected open-source projects.

This project follows Clean Architecture principles and is developed using a **Test-Driven Development (TDD)** approach. The app is designed with scalability and maintainability in mind, using **Firebase Firestore** for data storage.

---

## 🎯 Key Features

- 👤 **Personal Info** – Overview of who I am, including a short bio and career goals.
- 🧑‍💻 **Experience** – Timeline of my educational and professional background.
- 📁 **Projects** – Detailed showcase of my top open-source and client projects.
- ⚙️ **Technical Skills** – Display of my tech stack (Flutter, Firebase, REST APIs, etc.).
- 📬 **Contact Section** – Contact form or direct links to connect with me.

---

## 🧱 Architecture

The app is built using **Modular Clean Architecture**, ensuring separation of concerns and easy testing.

```bash
lib/
├── core/
│   ├── utils/
│   ├── constants/
│   └── extensions/
├── config/
│   ├── themes/
│   └── assets/
├── features/
│   ├── personal/
│   ├── experience/
│   ├── projects/
│   ├── technical_skills/
│   └── portfoilo/
├── shared/
│   ├── widgets/
│   └── styles/
└── main.dart
```

- **Presentation Layer** – Flutter widgets and screens using **Riverpod** or **Bloc** for state management.
- **Domain Layer** – Business logic, entities, and use cases with pure Dart.
- **Data Layer** – Integration with **Firestore** and remote/local data sources.

---

## 🧪 Testing Strategy

This project follows a **TDD-first approach**, aiming for high reliability and confidence in refactoring:

- ✅ **Unit tests** for core logic and use cases.
- 🧩 **Widget tests** for UI components.
- 🔄 **Mocking** for Firestore and external APIs.
- 📈 Goal: **100% test coverage** for all business-critical logic.

---

## 🧰 Tools & Technologies

| Category        | Stack                                     |
| --------------- | ----------------------------------------- |
| Framework       | Flutter, Dart                             |
| Architecture    | Clean Architecture                        |
| State Mgmt      | Riverpod / Bloc                           |
| Database        | Firebase Firestore                        |
| UI/UX Design    | Material 3, Figma                         |
| CI/CD           | GitHub Actions (planned)                  |
| Hosting         | Firebase Hosting / Appetize (coming soon) |
| Testing         | flutter_test, mockito                     |
| Version Control | Git, GitHub                               |

---

## 🚀 Demo Preview

- 🌐 [Demo](https://elsaramji.github.io/saramji_portfolio/)

---

## 🧑‍💻 Getting Started

To run the project locally:

```bash
git clone https://github.com/elsaramji/saramji_cv
cd portfolio_app
flutter pub get
flutter run
```

---

## 🙌 Contributing

While this project is a **personal portfolio**, contributions and suggestions are always welcome.
Feel free to open **issues** or submit **pull requests** if you'd like to help improve the structure or UI.

---

## 📄 License

This project is licensed under the **MIT License**.

---

## 👋 Contact

Developed with ❤️ by **Mahmoud Ahmed Al-Saramji**

- 📧 [mahmoudelsaramegy@gmail.com](mailto:mahmoudelsaramegy@gmail.com)
- 🌐 [github.com/elsaramji](https://github.com/elsaramji)
- 🌐 [linkedin.com/in/mahmoud-el-seramji](https://www.linkedin.com/in/mahmoud-el-seramji)

