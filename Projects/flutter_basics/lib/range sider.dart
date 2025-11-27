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


  RangeValues values = RangeValues(0, 100);

  @override
  Widget build(BuildContext context) {

    RangeLabels labels = RangeLabels(values.start.toString(), values.end.toString());

    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
        backgroundColor: Colors.blue,
      ),
      body: Center(
        child: RangeSlider(
            values: values,
            labels: labels,
            divisions: 10,
            activeColor: Colors.green,
            inactiveColor: Colors.grey,
            min: 0,
            max: 100,
            onChanged: (newValue){
                  print("${newValue.start}, ${newValue.end}");
                  setState(() {
                    values = newValue;
                  });
            }
        ),
      ),
    );
  }
}