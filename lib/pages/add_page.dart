import 'package:flutter/material.dart';

class AddPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Place an Order for Pickup'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Your Information',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 10),
            TextFormField(
              decoration: InputDecoration(labelText: 'Name'),
            ),
            TextFormField(
              decoration: InputDecoration(labelText: 'Email'),
            ),
            TextFormField(
              decoration: InputDecoration(labelText: 'Phone'),
            ),
            SizedBox(height: 20),
            Text(
              'Order Details',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 10),
            TextFormField(
              decoration: InputDecoration(labelText: 'Items'),
              maxLines: null,
            ),
            SizedBox(height: 20),
            Text('Pickup Information'),
            TextFormField(
              decoration: InputDecoration(labelText: 'Location'),
            ),
            TextFormField(
              decoration: InputDecoration(labelText: 'Time'),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                // Add order submission logic here
              },
              child: Text('Place Order'),
            ),
          ],
        ),
      ),
    );
  }
}
