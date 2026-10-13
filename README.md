MyShop - Mini E-Commerce Application

Student Name: Ria Shakya

Project Description :

MyShop is a multi-screen e-commerce mobile application built using Flutter. This practical assignment demonstrates fundamental Flutter concepts including layout structuring, scrolling mechanisms, reusable custom widgets, screen navigation, and passing data between routes. The app relies on a static, local dataset to display products across various categories.

Features :

Home Page: Features a promotional banner carousel, horizontal category scrolling, and a grid view of popular products.

Category Page: Dynamically filters and displays products based on the selected category using a grid layout.

Product Details Page: Displays comprehensive product information, including a hero image, price (in Rs.), rating, and description.

Interactive UI: Includes functional "Add to Cart", "Wishlist", and "Share" buttons that trigger SnackBar notifications.

Reusable Components: Utilizes a custom ProductCard widget that elegantly combines Card, Container, and Stack for layout efficiency.

Responsive Design: Handles long text with ellipses and utilizes constrained grid views to prevent RenderFlex overflow errors.

Packages Used :

carousel_slider: Used on the Home Page to create an auto-playing, swipeable banner carousel for promotional offers. It provides a highly customizable and interactive user experience that would be complex to build from scratch.

How to Run the Project:

Clone the repository:

git clone https://github.com/RiaShakya/E-Commerce-Application.git

Navigate to the project directory:

cd mini-ecommerce-flutter

Install the dependencies:

flutter pub get

Run the application:

flutter run
