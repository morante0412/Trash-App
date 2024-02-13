import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Home'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Choose an option:',
              style: TextStyle(fontSize: 20),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                // Navigate to the login page for trash pickup
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => PickupLoginPage()),
                );
              },
              child: Text('Log in for Trash Pickup'),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                // Navigate to the login page for placing an order
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => OrderLoginPage()),
                );
              },
              child: Text('Log in to Place an Order for Trash'),
            ),
          ],
        ),
      ),
    );
  }
}

class PickupLoginPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Log in for Trash Pickup'),
      ),
      body: Center(
        child: Text('This is the login page for trash pickup.'),
      ),
    );
  }
}

class OrderLoginPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Log in to Place an Order for Trash'),
      ),
      body: Center(
        child: Text('This is the login page to place an order for trash.'),
      ),
    );
  }
}

void main() {
  runApp(MaterialApp(
    home: HomePage(),
  ));
}
