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
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 30.0),
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
            const SizedBox(height: 30.0),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 30.0),
                  child: SizedBox(
              width: MediaQuery.of(context).size.width * 0.9,
              child: Image.asset(
                'images/Rectangle 1706.jpg',
                fit: BoxFit.cover,
              ),
            ),
                )
              ],
            ),
            const SizedBox(height: 20.0),
            const Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children:[
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 30.0), 
                  child: Text(
                    "Capuccino",
                    style: TextStyle(fontSize: 28.0),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 30.0), 
                  child: Text(
                    "with Chocolate",
                    style: TextStyle(fontSize: 14.0),
                  ),
                ),
              ]
            )
          ],
        ),
      ),
    );
  }
}
