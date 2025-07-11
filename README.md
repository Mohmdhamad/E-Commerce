# E-Commerce App

A complete Flutter E-Commerce mobile application built using clean architecture and Bloc for state management.

## Features

- User Authentication (Login / Register / Logout)
- Product Listing and Details
- Add to Favorites and Remove
- Shopping Cart Management
- Profile View, Edit, and Delete
- Responsive UI and Clean Design
- API Integration with Dio
- Token Storage using SharedPreferences
- Full State Management using flutter_bloc

## Project Structure

```
lib/
├── core/                # Reusable helpers, constants, cache
├── features/
│   ├── auth/            # Login and Register
│   ├── home/            # Product Listing
│   ├── favorite/        # Favorite Products
│   ├── cart/            # Shopping Cart
│   ├── profile/         # User Profile
│   └── ...              # Other features
└── main.dart
```

## Getting Started

1. Clone the repository:
   ```bash
   git clone https://github.com/Mohmdhamad/E-Commerce.git
   cd E-Commerce
   ```

2. Install dependencies:
   ```bash
   flutter pub get
   ```

3. Run the app:
   ```bash
   flutter run
   ```

> Make sure your emulator or physical device is running.

## Tech Stack

- Flutter & Dart
- flutter_bloc
- Dio
- SharedPreferences
- Clean Architecture Principles

## Author

**Mohamed Abdelfattah Hamad**  
Flutter Developer from Tanta, Egypt
- GitHub: [Mohmdhamad](https://github.com/Mohmdhamad)
- LinkedIn: [mo7maaa7maaa](https://www.linkedin.com/in/mo7maaa7maaa)

## License

This project is licensed under the MIT License.
