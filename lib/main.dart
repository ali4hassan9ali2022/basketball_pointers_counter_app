import 'package:basketball_pointers_counter_app/cubit/counter_cubit.dart';
import 'package:basketball_pointers_counter_app/cubit/counter_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main() {
  runApp(const BasketBallPointersCounterApp());
}

class BasketBallPointersCounterApp extends StatelessWidget {
  const BasketBallPointersCounterApp({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => CounterCubit(),
      child: MaterialApp(
        theme: ThemeData.dark(),
        debugShowCheckedModeBanner: false,
        home: BlocBuilder<CounterCubit, CounterState>(
          builder: (context, state) {
            return Scaffold(
              body: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16),
                child: Column(
                  children: [
                    const SizedBox(
                      height: 100,
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
                            Text(
                              "${BlocProvider.of<CounterCubit>(context).teamAPoints}",
                              style: const TextStyle(
                                fontSize: 95,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                maximumSize: const Size(150, 50),
                                backgroundColor: Colors.red,
                              ),
                              onPressed: () {
                                BlocProvider.of<CounterCubit>(context)
                                    .inCrement(team: 'A', counterIncrement: 1);
                              },
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
                              onPressed: () {
                                BlocProvider.of<CounterCubit>(context)
                                    .inCrement(team: 'A', counterIncrement: 2);
                              },
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
                              onPressed: () {
                                BlocProvider.of<CounterCubit>(context)
                                    .inCrement(team: 'A', counterIncrement: 3);
                              },
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
                            Text(
                              "${BlocProvider.of<CounterCubit>(context).teamBPoints}",
                              style: const TextStyle(
                                fontSize: 95,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                maximumSize: const Size(150, 50),
                                backgroundColor: Colors.red,
                              ),
                              onPressed: () {
                                BlocProvider.of<CounterCubit>(context)
                                    .inCrement(team: 'B', counterIncrement: 1);
                              },
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
                              onPressed: () {
                                BlocProvider.of<CounterCubit>(context)
                                    .inCrement(team: 'B', counterIncrement: 2);
                              },
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
                              onPressed: () {
                                BlocProvider.of<CounterCubit>(context)
                                    .inCrement(team: 'B', counterIncrement: 3);
                              },
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
                    const Spacer(),
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        maximumSize: const Size(150, 50),
                        backgroundColor: Colors.blue,
                      ),
                      onPressed: () {
                        BlocProvider.of<CounterCubit>(context).reset();
                      },
                      child: const Center(
                        child: Text(
                          "Reset",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 18,
                          ),
                        ),
                      ),
                    ),
                    const Spacer(),
                  ],
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
