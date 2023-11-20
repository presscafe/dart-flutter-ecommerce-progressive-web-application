// lib/main.dart

import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Ecommerce PWA',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Ecommerce PWA'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'Welcome to the Ecommerce PWA!',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 20),
            // Recommended Ecommerce Widgets and Features
            ElevatedButton(
              onPressed: () {
                // Add functionality for browsing products
                // Navigate to a responsive product listing page
                Navigator.push(context, MaterialPageRoute(builder: (context) => ProductListingPage()));
              },
              child: Text('Browse Products'),
            ),
            ElevatedButton(
              onPressed: () {
                // Add functionality for viewing the shopping cart
                // Navigate to a responsive shopping cart page
                Navigator.push(context, MaterialPageRoute(builder: (context) => ShoppingCartPage()));
              },
              child: Text('View Cart'),
            ),
            ElevatedButton(
              onPressed: () {
                // Add functionality for user authentication or login
                // Navigate to a secure and responsive login page
                Navigator.push(context, MaterialPageRoute(builder: (context) => LoginPage()));
              },
              child: Text('Login'),
            ),
            // Additional Features
            ElevatedButton(
              onPressed: () {
                // Add functionality for user registration
                // Navigate to a user-friendly and secure registration page
                Navigator.push(context, MaterialPageRoute(builder: (context) => RegistrationPage()));
              },
              child: Text('Register'),
            ),
            ElevatedButton(
              onPressed: () {
                // Add functionality for viewing order history
                // Navigate to a responsive order history page
                Navigator.push(context, MaterialPageRoute(builder: (context) => OrderHistoryPage()));
              },
              child: Text('Order History'),
            ),
          ],
        ),
      ),
    );
  }
}

class Product {
  final String name;
  final String description;
  final double price;

  Product(this.name, this.description, this.price);
}

class ProductListingPage extends StatelessWidget {
  final List<Product> products = [
    Product('Smartphone', 'High-end smartphone with advanced features.', 799.99),
    Product('Laptop', 'Powerful laptop for work and entertainment.', 1299.99),
    Product('Wireless Headphones', 'Premium wireless headphones with noise cancellation.', 199.99),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Product Listing'),
      ),
      body: ListView.builder(
        itemCount: products.length,
        itemBuilder: (context, index) {
          return ListTile(
            title: Text(products[index].name),
            subtitle: Text(products[index].description),
            trailing: Text('\$${products[index].price.toString()}'),
          );
        },
      ),
    );
  }
}

class ShoppingCartPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // Implement the shopping cart page UI and functionality
    return Scaffold(
      appBar: AppBar(
        title: Text('Shopping Cart'),
      ),
      body: Center(
        child: Text('Shopping Cart Page'),
      ),
    );
  }
}

class LoginPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // Implement the login page UI and functionality
    return Scaffold(
      appBar: AppBar(
        title: Text('Login'),
      ),
      body: Center(
        child: Text('Login Page'),
      ),
    );
  }
}

class RegistrationPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // Implement the registration page UI and functionality
    return Scaffold(
      appBar: AppBar(
        title: Text('Registration'),
      ),
      body: Center(
        child: Text('Registration Page'),
      ),
    );
  }
}

class OrderHistoryPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // Implement the order history page UI and functionality
    return Scaffold(
      appBar: AppBar(
        title: Text('Order History'),
      ),
      body: Center(
        child: Text('Order History Page'),
      ),
    );
  }
}

