import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Flutter Project'),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Image.asset(
              'images/arrow-left.jpg',
              width: 30.0,
              height: 30.0,
            ),
            const SizedBox(width: 30.0), 
            const Expanded(
              child: Align(
                alignment: Alignment.center,
                child: Text(
                  'Detail',
                  style: TextStyle(fontSize: 24.0),
                ),
              ),
            ),
            const SizedBox(width: 30.0), 
            Image.asset(
              'images/Heart.jpg',
              width: 30.0,
              height: 30.0,
            ),
          ],
        ),
              
      ),
      ),
    );
  }
}
