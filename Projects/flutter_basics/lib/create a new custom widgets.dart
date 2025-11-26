import 'package:flutter/material.dart';
import 'package:flutter_basics/widgets/rounded_button.dart'; // keep same package path you use

// simple text style function used in the example
TextStyle mTextStyle16() {
  return const TextStyle(
    fontSize: 16,
    fontWeight: FontWeight.w600,
  );
}

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        useMaterial3: false,
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Create a new custom widgets'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  final String title;
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
        backgroundColor: Colors.blue,
      ),
      body: Center(
        child: RoundedButton(
          btnName: "Click Me",
          btnIcon: const Icon(Icons.lock),
          callBack: () {
            // any action
            debugPrint("Clicked me!");
          },
          textStyle: mTextStyle16(),
        ),
      ),
    );
  }
}