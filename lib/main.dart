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
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: Column(
            children: [
              const SizedBox(
                height: 70,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    children: [
                      const Text(
                        "Team A",
                        style: TextStyle(
                          fontSize: 28,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      const Text(
                        "0",
                        style: TextStyle(
                          fontSize: 95,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          maximumSize: const Size(150, 50),
                          backgroundColor: Colors.red,
                        ),
                        onPressed: () {},
                        child: const Center(
                          child: Text(
                            "Add 1 point",
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 16,
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 16,
                      ),
                      ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          maximumSize: const Size(150, 50),
                          backgroundColor: Colors.red,
                        ),
                        onPressed: () {},
                        child: const Center(
                          child: Text(
                            "Add 2 points",
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 16,
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 16,
                      ),
                      ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          maximumSize: const Size(150, 50),
                          backgroundColor: Colors.red,
                        ),
                        onPressed: () {},
                        child: const Center(
                          child: Text(
                            "Add 3 points",
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 16,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 350,
                    child: VerticalDivider(
                      color: Colors.grey,
                      thickness: 1,
                    ),
                  ),
                  Column(
                    children: [
                      const Text(
                        "Team B",
                        style: TextStyle(
                          fontSize: 28,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      const Text(
                        "0",
                        style: TextStyle(
                          fontSize: 95,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          maximumSize: const Size(150, 50),
                          backgroundColor: Colors.red,
                        ),
                        onPressed: () {},
                        child: const Center(
                          child: Text(
                            "Add 1 point",
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 16,
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 16,
                      ),
                      ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          maximumSize: const Size(150, 50),
                          backgroundColor: Colors.red,
                        ),
                        onPressed: () {},
                        child: const Center(
                          child: Text(
                            "Add 2 points",
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 16,
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 16,
                      ),
                      ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          maximumSize: const Size(150, 50),
                          backgroundColor: Colors.red,
                        ),
                        onPressed: () {},
                        child: const Center(
                          child: Text(
                            "Add 3 points",
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 16,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
