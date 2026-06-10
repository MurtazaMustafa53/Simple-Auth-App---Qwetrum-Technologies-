# Simple-Auth-App---Qwetrum-Technologies-




### 🔐 Authentication Flow — Form Validation \& Local Storage (MVC)





A secure, robust, and user-friendly Login and Registration workflow for a mobile application. This project demonstrates synchronous form validation, error handling, and lightweight local data persistence using an architectural MVC (Model-View-Controller) pattern.





This system simulates a complete authentication lifecycle locally, eliminating the need for an external backend database while ensuring production-ready logic.



##### 🚀 Features \& Requirements





The application maps specific user authentication and security constraints into a fluid mobile workflow:



* Registration Screen: Collects user profile details including Name, Email, Password, and Confirm Password.



* Login Screen: Features dedicated Email and Password input configurations paired with a primary entry action button.



* Navigation Flow: On successful authentication matching the locally stored credentials, the system securely routes the user to a simple, protected Home/Welcome dashboard.





##### 🛡️ Form Validation \& Error Handling







The application evaluates input constraints in real-time, instantly displaying native error states for:



* Empty Fields: Prevents form submission if any required input field is left blank.



* Invalid Email Formats: Validates inputs against structural RegEx constraints to ensure email authenticity.



* Short Passwords: Enforces a minimum length constraint to promote secure password creation habits.



* Password Mismatch: Ensures the Password and Confirm Password entries match perfectly before allowing registration.





##### 💾 Local Persistence (Shared Preferences)





* No Backend Required: Implements a localized authentication lifecycle.



* Data Storage: Uses SharedPreferences to securely cache and store the user's registered email and password values natively on the device.



* Dynamic Validation: The Login controller reads these stored keys at runtime to verify credential matches, providing a localized mock-database authentication experience.





🏗️ Architectural Breakdown (MVC)





To keep the platform modular, presentation elements are decoupled from validation logic and local storage processes:



* Model (models/): Establishes the data contract blueprint for the User object handling security configurations.



* View (views/): Contains the stateful visual layouts (LoginScreen, RegisterScreen, and HomeScreen), managing form key states and rendering explicit error messages.



* Controller (controllers/): Houses the form processing rules, RegExp strings, input length logic, and asynchronous SharedPreferences database operations.



