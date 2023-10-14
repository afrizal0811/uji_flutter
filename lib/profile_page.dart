import 'package:flutter/material.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({super.key});

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  var name = 'afrizal';
  var i = 0;
  final listName = ['Ijal', 'Dilla', 'Cinta', 'Uhuy'];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Profile Page'),
      ),
      body: Center(child: Text('Hello $name')),
      floatingActionButton: FloatingActionButton(
          onPressed: () {
            setState(() {
              name = listName[i];
              i++;
              if (i >= name.length) i = 0;
            });
          },
          child: const Icon(Icons.refresh)),
    );
  }
}
