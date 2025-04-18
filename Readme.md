# 🎧 AudioSphere

**AudioSphere** is a modern e-commerce web application for discovering, filtering, and purchasing premium audio products such as earphones, headphones, neckbands, and TWS. The platform features a clean UI, advanced filtering options, secure user authentication, cart management, and a seamless checkout experience.

---

## 🚀 Features

- **🛍️ Product Catalog**: Browse a wide range of audio products with images, descriptions, and pricing.
- **🔍 Advanced Filters**: Filter by category, brand, and sort by name or price.
- **⚡ Instant Search**: Search products by name, description, or category.
- **ℹ️ Product Details**: View detailed specifications and customer reviews.
- **🔐 User Authentication**: Secure user registration and login.
- **🛒 Cart Management**: Add, update, or remove items from your cart.
- **💳 Checkout & Receipt**: Fill in shipping details, select payment method, and receive a printable receipt.
- **👤 Profile Management**: Update your account info and password.
- **📱 Responsive Design**: Fully responsive for desktop and mobile devices.

---

## 🛠️ Tech Stack

- **Frontend**: HTML, CSS, JavaScript
- **Backend**: PHP (Procedural)
- **Database**: MySQL (`AudioSphere.sql`)
- **Libraries Used**:
  - [Font Awesome](https://fontawesome.com/)
  - [Tiny Slider](https://github.com/ganlanyuan/tiny-slider)

---

## 📁 Project Structure

```
.
├── index.php
├── Allproduct.php
├── cart.php
├── login.php
├── update_cart.php
├── viewProduct.php
├── AudioSphere.sql
├── assets/
│   ├── [product images, brand logos, etc.]
├── css/
│   ├── [stylesheets]
├── js/
│   ├── [JavaScript files]
├── require/
│   ├── config.php
│   ├── nav.php
│   ├── footer.html
│   ├── loginBack.php
│   ├── logout.php
│   ├── viewProductBack.php
```

---

## ⚙️ Setup Instructions

1. **Clone the Repository**

   ```bash
   git clone https://github.com/Abhishek-soni6904/AudioSphere.git
   cd audiosphere
   ```

2. **Database Setup**

   - Import the `AudioSphere.sql` file into your MySQL server to create required tables and sample data.

   ```bash
   mysql -u root -p < AudioSphere.sql
   ```

3. **Configure Database**

   - Edit `require/config.php` with your MySQL credentials if they differ from the defaults.

4. **Run Locally**

   - Move the project folder to your web server’s root directory (e.g., `htdocs` for XAMPP).
   - Start Apache and MySQL.
   - Visit: [http://localhost/audiosphere/index.php](http://localhost/audiosphere/index.php)

---

## 💡 Usage

- **Explore Products**: Use homepage or "All Products" page.
- **Filter & Search**: Use filter sidebar or search bar.
- **Details**: Click "View Details" for more info.
- **Cart & Checkout**: Add to cart, then proceed to checkout.
- **Account Settings**: Access via nav bar after login.

---

## 🛠️ Customization

- **Add Products**: Insert new entries into the `products` table.
- **Branding**: Update logos/images in `assets/` and modify UI text.
- **Styling**: Tweak stylesheets in the `css/` folder for custom themes.

---

## 🔐 Security Notes

- Passwords are hashed using `password_hash()` for security.
- All SQL interactions use **prepared statements** to prevent SQL injection.
- User inputs are properly **validated and sanitized** on both client and server sides.

## 📩 Contact

For any queries or support, feel free to reach out:

- **👤 Name**: Abhishek Soni
- **📧 Email**: [abhisheksoni6904@gmail.com](mailto:abhisheksoni6904@gmail.com)
- **🔗 GitHub**: [Abhishek-soni6904](https://github.com/Abhishek-soni6904)
- **📸 Instagram**: [\_abhishek.\_\.soni\_](https://www.instagram.com/_abhishek._.soni_/)
- **💼 LinkedIn**: [Abhishek Soni](https://www.linkedin.com/in/abhishek-soni-662028331/)
