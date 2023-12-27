import 'package:flutter/material.dart';

/*
Create a Flutter application that features an immutable 
widget similar to ImmutableWidget. This widget should 
dynamically change its styling (color, shape, etc.) 
based on user interaction (e.g., button press).
 */

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: YourImmutableWidget(),
    );
  }
}

class YourImmutableWidget extends StatefulWidget {
  const YourImmutableWidget({super.key});

  @override
  State<YourImmutableWidget> createState() => _YourImmutableWidgetState();
}

class _YourImmutableWidgetState extends State<YourImmutableWidget> {
  MaterialColor colors = Colors.grey;
  List<Color> colorsList = [
    Colors.black,
    Colors.lightBlue,
    Colors.amber,
    Colors.black,
    Colors.amber,
    Colors.blue,
    Colors.indigo,
    Colors.orange,
    Colors.purple,
    Colors.brown,
    Colors.deepOrangeAccent,
    Colors.transparent,
    Colors.lightBlueAccent
  ];
  int count = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Custom color change"),
        backgroundColor: Colors.green,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              height: 300,
              width: 300,
              decoration: BoxDecoration(
                color: colorsList[count],
              ),
             
            ), 
             ElevatedButton(
                  onPressed: () {
                    setState(() {
                      count = (count + 1) % colorsList.length;
                    });
                  },
                  
                  child: const Text("Change Color")),
          ],
        ),
      ),
    );
  }
}
