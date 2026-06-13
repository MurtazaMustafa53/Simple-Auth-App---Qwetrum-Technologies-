# Simple-Auth-App & Live Country Explorer

A secure, robust, and full-featured Flutter mobile application demonstrating local authentication, live REST API consumption, defensive JSON parsing, and resilient offline caching. This project is built following the **MVC (Model-View-Controller)** design pattern to decouple UI presentation layers from heavy business logic and network streams.

---

## 🚀 Features & Capabilities

The application bridges a secure authentication workflow with a production-ready data-fetching dashboard:

* **Secure Authentication Flow:** Seamless local registration, validation, and persistent user matching.
* **Live Data Explorer:** Connects securely to the REST Countries engine to fetch global geospatial metrics.
* **Asynchronous Loading States:** Handles clean contextual UI switching (Spinners, Error widgets, or Data lists) during the network runtime.
* **Device-Level Caching:** Implements an automated local fallback layer keeping the application fully functional without a network connection.

---

## 🏗️ Architectural Breakdown (MVC)

The system is highly modular, ensuring scalable state handling and separation of concerns:

```text
lib/
│
├── controllers/
│   ├── auth_controller.dart     # Form rules, local user persistence, validation states
│   └── api_controller.dart      # HTTP client, network streams, disk-caching mechanisms
│
├── models/
│   ├── user_model.dart          # Local data blueprint handling credential keys
│   └── country_model.dart       # Defensive JSON-to-Dart runtime mapping parser
│
└── views/
    ├── login_screen.dart        # Authentication access UI
    ├── register_screen.dart     # Secure onboarding registration UI
    ├── home_screen.dart         # Protected parent view / dashboard entryway
    └── country_list_screen.dart # Real-time filtered list layout (Custom ListViews/Cards)