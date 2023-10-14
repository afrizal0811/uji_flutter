import 'package:flutter/material.dart';

class MyCardWidget extends StatelessWidget {
  final String? title;
  final String? desc;

  const MyCardWidget({
    super.key, 
    required this.title,
    required this.desc,
    });

  @override
  Widget build(BuildContext context) {
    return Container(
        width: double.infinity,
        padding: const EdgeInsets.all(16),
        decoration: BoxDecoration(
          color: Colors.white,
          border: Border.all(color: Colors.black),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              title ?? 'Title',
              style: const TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
            Text(
              desc ?? 'Description',
              style: const TextStyle(
                fontSize: 16,
              ),
            ),
          ],
        ));
  }
}
