# i-Store 🛒

i-Store is a modern, feature-rich e-commerce application built with **Flutter**. It provides a seamless shopping experience with multiple product categories, secure authentication, and a robust state management system.

---

## 📱 Features

### 🔐 Authentication & Onboarding
* **Splash Screen:** Smooth entry animation.
* **Onboarding:** Interactive screens introducing the app's features.
* **Flexible Login:** Traditional Email/Password login or Social Authentication via **Google** and **Facebook**.
* **User Management:** Register account, **Verify Email** flow, and **Forgot Password** recovery.

### 🛍️ Shopping Experience
* **Dynamic Home Page:** Features banners, categories, and featured products.
* **Categories:** Easily browse products like **Shoes, T-shirts, Electronics**, and more.
* **Product Types:** * **Simple Products:** Standard single-item listings.
    * **Products with Variations:** Support for different sizes, colors, and prices within a single product entry.
* **Wishlist:** Save your favorite items for later.
* **Store:** A dedicated section to explore the full catalog.

### 👤 Profile & Navigation
* **Navigation Menu:** A clean bottom navigation bar for easy access to:
    * **Home:** Discover new items.
    * **Store:** Browse by category and brand.
    * **Wishlist:** Your curated favorites.
    * **Profile:** Manage account settings, addresses, and order history.

---

## 🛠️ Tech Stack

* **Frontend:** [Flutter]
* **State Management:** [GetX](efficient navigation, snackbars, and reactive state).
* **Backend:** [Firebase]
    * **Firebase Authentication:** Secure user sign-in methods.
    * **Cloud Firestore:** Real-time NoSQL database for products, categories, and user data.
    * **Firebase Storage:** For hosting product images.

---

## 📂 Project Structure (GetX Pattern)

The project follows a clean architecture using the GetX pattern:
* `lib/features`: Contains the UI and Logic for Auth, Shop, and Personalization.
* `lib/data`: Repositories and providers for Firebase integration.
* `lib/utils`: Constants, themes, helpers, and validators.
* `lib/common`: Reusable widgets like buttons, cards, and loaders.

---

## 🚀 Getting Started

### Prerequisites
* Flutter SDK installed.
* Firebase project set up.

### Installation

1.  **Clone the repository:**
    ```bash
    git clone [https://github.com/ImadDz-7/i-store](https://github.com/ImadDz-7/i-store)
    cd i-store
    ```

2.  **Add Firebase Configuration:**
    * Download `google-services.json` from Firebase Console and place it in `android/app/`.
    * Download `GoogleService-Info.plist` and place it in `ios/Runner/`.

3.  **Install dependencies:**
    ```bash
    flutter pub get
    ```

4.  **Run the app:**
    ```bash
    flutter run
    ```

---
