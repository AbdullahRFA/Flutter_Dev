import 'package:flutter/material.dart';
import 'package:flutter_basics/IntroPage.dart';

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
      home:  IntroPage(),
    );
  }
}

class MyHomePagee extends StatefulWidget {
  final String title;
  const MyHomePagee({Key? key, required this.title}) : super(key: key);

  @override
  State<MyHomePagee> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePagee> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
        backgroundColor: Colors.blue,
      ),
      body: Center(
        child: Column(
          children: [
            Text("This is home page"),
            ElevatedButton(onPressed: (){
              Navigator.push(context, MaterialPageRoute(builder: (context){
                return IntroPage();
              }));
            }, child: Text("Back"))
          ],
        ),
      ),
    );
  }
}