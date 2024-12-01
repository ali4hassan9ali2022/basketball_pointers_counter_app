import 'package:flutter/material.dart';

void main() {
  runApp(const BasketBallPointersCounterApp());
}

class BasketBallPointersCounterApp extends StatelessWidget {
  const BasketBallPointersCounterApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark(),
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Column(
          children: [
            SizedBox(
              height: 70,
            ),
            Row(
              children: [
                Text(
                  "Team A",
                  style: TextStyle(
                    fontSize: 28,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
