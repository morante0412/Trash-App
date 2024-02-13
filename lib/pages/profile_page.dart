import 'package:flutter/material.dart';

class ProfilePage extends StatefulWidget {
  @override
  _ProfilePageState createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  String _name = 'John Doe';
  String _email = 'johndoe@example.com';
  String _phone = '123-456-7890';
  bool _isEditing = false;

  TextEditingController _nameController = TextEditingController();
  TextEditingController _emailController = TextEditingController();
  TextEditingController _phoneController = TextEditingController();

  @override
  void initState() {
    super.initState();
    _nameController.text = _name;
    _emailController.text = _email;
    _phoneController.text = _phone;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Profile'),
        actions: _isEditing
            ? [
                IconButton(
                  icon: Icon(Icons.save),
                  onPressed: () {
                    setState(() {
                      _name = _nameController.text;
                      _email = _emailController.text;
                      _phone = _phoneController.text;
                      _isEditing = false;
                    });
                  },
                )
              ]
            : [
                IconButton(
                  icon: Icon(Icons.edit),
                  onPressed: () {
                    setState(() {
                      _isEditing = true;
                    });
                  },
                )
              ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Center(
              child: CircleAvatar(
                radius: 50,
                backgroundImage: AssetImage('assets/demo_profile_pic.jpg'), // Replace 'assets/profile_pic.jpg' with your actual image asset path
              ),
            ),
            SizedBox(height: 20),
            TextFormField(
              controller: _nameController,
              enabled: _isEditing,
              decoration: InputDecoration(labelText: 'Name'),
            ),
            TextFormField(
              controller: _emailController,
              enabled: _isEditing,
              decoration: InputDecoration(labelText: 'Email'),
            ),
            TextFormField(
              controller: _phoneController,
              enabled: _isEditing,
              decoration: InputDecoration(labelText: 'Phone'),
            ),
          ],
        ),
      ),
    );
  }
}
