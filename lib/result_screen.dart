import 'package:flutter/material.dart';

class ResultScreen extends StatelessWidget {
  const ResultScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Padding(
        padding: const EdgeInsets.all(8),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Center(
              child: Text('You have answered x out of y questions correctly'),
            ),
            const SizedBox(
              height: 30,
            ),
            const Center(
              child: Text('List of Questions and Answers:'),
            ),
            const SizedBox(
              height: 30,
            ),
            TextButton(
              onPressed: () {},
              child: const Text('data'),
            )
          ],
        ),
      ),
    );
  }
}
