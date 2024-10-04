# Fast Food Management System

A mobile application built with Flutter and Dart for managing fast food orders, designed for customers, administrators, and riders. MongoDB is used as the database to handle data storage and retrieval. The app supports user registration, order placement, inventory management, and food delivery.

## Features

### Administrator
- Manage user accounts and login.
- Update inventory and place supply orders.
- Generate sales and inventory reports.
- Manage the menu and pricing.
- Handle payments and generate receipts.
- Manage cash and provide change.

### Customer
- Create an account.
- View available menu items.
- Place orders.

## Non-Functional Requirements
- **Performance:** Fast response time to user actions.
- **Reliability:** Ensures continuous service availability.
- **Scalability:** Handles a growing number of users.
- **Security:** Protects sensitive user and transaction data.

## Technologies Used
- **Flutter & Dart:** Mobile app frontend.
- **MongoDB:** NoSQL database for handling orders, users, and inventory data.
- **Dart Packages:** 
  - `http` for API requests.
  - `provider` for state management.
  - `flutter_secure_storage` for storing user credentials securely.


## Installation

### Prerequisites
- Flutter SDK: [Installation Guide](https://flutter.dev/docs/get-started/install)
- MongoDB: Set up a MongoDB instance locally or use [MongoDB Atlas](https://www.mongodb.com/cloud/atlas).

### Steps to Run
1. Clone the repository:
   ```bash
   git clone https://github.com/HussnainProg/SEProject.git
2. Navigate to the project directory:
   cd SEProject
3. Install Flutter dependencies:
   flutter pub get
4. Set up your MongoDB connection in lib/config/mongodb_config.dart.
5. Run the app:
   flutter run
