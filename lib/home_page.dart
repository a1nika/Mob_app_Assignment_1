import 'package:flutter/material.dart';
import 'package:a1/task_page.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              const Column(
                children: [
                  Text(
                    "Welcome to",
                    style: TextStyle(color: Colors.black, fontSize: 15),
                  ),
                  Text(
                    "Plan It",
                    style: TextStyle(
                        color: Colors.amber,
                        fontSize: 40,
                        fontWeight: FontWeight.bold),
                  ),
                ],
              ),
              Column(
                children: [
                  const Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text("Your Personal task management"),
                      Text("and planning solution"),
                    ],
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const TaskPage(),
                        ),
                      );
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.amber[100], // Background color
                    ),
                    child: const Text(
                      'Lets get started',
                      style: TextStyle(fontSize: 15),

                    ),
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}