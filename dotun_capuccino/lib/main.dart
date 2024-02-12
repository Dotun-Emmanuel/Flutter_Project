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
                  ),
                ],
              ),
            ),
            const SizedBox(height: 30.0),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 30.0),
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
            ),
            const SizedBox(height: 20.0),
             Padding(
              padding: const EdgeInsets.symmetric(horizontal: 30.0),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Row(
                    children: [
                      Icon(Icons.star, size: 30.0, color: Colors.yellow),
                      Text(
                        "4.8",
                        style: TextStyle(fontSize: 20.0),
                        ),
                       Text(
                        "(230)",
                        style: TextStyle(fontSize: 14.0),
                        ),
                    ],
                  ),
                  Row(
                    children: [
                         Image.asset(
                        'images/bean.jpg',
                      ),
                      const SizedBox(width: 10.0),
                      Image.asset(
                        'images/milk.jpg',
                      ),
                    ],
                  ),
                ],
              ),
            ),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 30.0),
              child: Column(
                 children:[
                  Divider(
                color: Colors.grey,
              thickness: 0.5,
              height: 50.0, 
              ),
            ],
            ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 30.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                 children:[
                  const Text("Description",
                    style: TextStyle(fontSize: 22.0),
                  ),
                  const SizedBox(height: 20.0),
                    RichText(
                    text: const TextSpan(
                      style: TextStyle(fontSize: 14.0, color: Colors.black, height: 1.8),
                      children: [
                        TextSpan(
                          text: "A capuccino is an approximately 150 ml (5 oz) beverage, with 25 ml of espresso coffee and 85ml of fresh milk the fo..",
                        ),
                        //    WidgetSpan(
                        //   child: SizedBox(width: 5.0),
                        // ),
                        TextSpan(
                          text: "Read more",
                          style: TextStyle(fontSize: 18.0, color: Colors.brown, fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                  ),
            ],
            ),
            ),
            const SizedBox(height: 20.0),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 30.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("Size",
                    style: TextStyle(fontSize: 24.0),
                  ),
                  SizedBox(height: 10.0),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                         ReusableButton(
                        text: 'S',
                        textColor: Colors.black,
                        buttonColor: Colors.white,
                        borderColor: Colors.grey, 
                        borderWidth: 1.0,
                        width: 100.0, 
                        height: 50.0,
                      ),
                      ReusableButton(
                        text: 'M',
                        textColor: Colors.brown,
                        buttonColor: Color.fromARGB(255, 240, 202, 188),
                        borderColor: Color.fromARGB(255, 240, 202, 188), 
                        borderWidth: 1.0,
                        width: 100.0, 
                        height: 50.0,
                      ),
                      ReusableButton(
                        text: 'L',
                        textColor: Colors.black,
                        buttonColor: Colors.white, 
                        borderColor: Colors.grey, 
                        borderWidth: 1.0, 
                        width: 100.0, 
                        height: 50.0,
                      ),
                    ],
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}


class ReusableButton extends StatelessWidget {
  final String text;
  final Color textColor;
  final Color buttonColor;
  final Color borderColor;
  final double borderWidth;
  final double width;
  final double height;
  

  const ReusableButton({super.key, 
    required this.text,
    required this.textColor,
    required this.buttonColor, 
    required this.borderColor, 
    required this.borderWidth,
    required this.width,
    required this.height,
  });

  @override
   Widget build(BuildContext context) {
    return SizedBox(
      width: width,
      height: height,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10.0),
            side: BorderSide(color: borderColor, width: borderWidth), 
          ),
        ).copyWith(backgroundColor: MaterialStateProperty.all(buttonColor)),
        onPressed: null, 
        child: Text(
          text,
          style: TextStyle(
            color: textColor,
            fontSize: 16.0,
          ), 
        ),
      ),
    );
  }
}