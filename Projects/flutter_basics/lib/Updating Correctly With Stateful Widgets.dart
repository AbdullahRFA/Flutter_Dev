import 'dart:math';

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
      debugShowCheckedModeBanner: false,
      theme: ThemeData(),
      home: const MyHomePage(title: 'Container'),
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

  var controller1 = TextEditingController();
  var controller2 = TextEditingController();
  var resultText = "";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
        backgroundColor: Colors.blue,
      ),
      body: Container(
        color: Colors.greenAccent,
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              TextField(
                keyboardType: TextInputType.number,
                controller: controller1,
              ),
              TextField(
                keyboardType: TextInputType.number,
                controller: controller2,
              ),
              SizedBox(
                height: 40,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  ElevatedButton(
                      onPressed: (){
                        setState(() {
                        var num1 = int.parse(controller1.text.toString());
                        var num2 = int.parse(controller2.text.toString());
                        var sum = num1 + num2;
                        controller1.clear();
                        controller2.clear();
                        resultText = "The sum of $num1 and $num2 = $sum";

                        });
                      },
                      child: Text("Add")
                  ),
                  ElevatedButton(
                      onPressed: (){
                        setState(() {
                          var num1 = int.parse(controller1.text.toString());
                          var num2 = int.parse(controller2.text.toString());
                          var sub = num1 - num2;
                          controller1.clear();
                          controller2.clear();
                          resultText = "The sub of $num1 and $num2 = $sub";
                        });
                      },
                      child: Text("Sub")
                  ),
                  ElevatedButton(
                      onPressed: (){
                        setState(() {
                          var num1 = int.parse(controller1.text.toString());
                          var num2 = int.parse(controller2.text.toString());
                          var mul = num1 * num2;
                          controller1.clear();
                          controller2.clear();
                          resultText = "The mul of $num1 and $num2 = $mul";
                        });
                      },
                      child: Text("Mul")
                  ),
                  ElevatedButton(
                      onPressed: (){
                        setState(() {
                          var num1 = int.parse(controller1.text);
                          var num2 = int.parse(controller2.text);

                          if (num2 == 0) {
                            resultText = "Cannot divide by ZERO!";
                            controller1.clear();
                            controller2.clear();
                            return;
                          }

                          double div = num1 / num2;

                          controller1.clear();
                          controller2.clear();

                          resultText = "The div of $num1 and $num2 = ${div.toStringAsFixed(2)}";
                        });
                      },
                      child: Text("Div")
                  ),

                ],
              ),
              Padding(padding: const EdgeInsets.all(22),
              child: Text("Result:  $resultText",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 25,
                ),
              ),
              ),
            ],

          ),
        ),

      ),
    );
  }
}