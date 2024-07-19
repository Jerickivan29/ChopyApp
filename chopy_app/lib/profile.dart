import 'package:flutter/material.dart';

class Profile extends StatelessWidget {
  final Function(int) onBackTap;

  const Profile({super.key, required this.onBackTap});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 113, 201, 206),
        title: Row(
          children: [
            GestureDetector(
              child: const Icon(
                Icons.chevron_left,
                size: 30,
              ),
              onTap: () => onBackTap(0),
            ),
            Text('Profile'),
          ],
        ),
        actions: [
          IconButton(
            icon: const Icon(
              Icons.search,
            ),
            onPressed: () {},
          ),
        ],
      ),
      body: const Center(child: Text("Profile")),
    );
  }
}
