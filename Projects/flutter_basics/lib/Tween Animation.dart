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

class _MyHomePageState extends State<MyHomePage> with SingleTickerProviderStateMixin{

  late Animation animation;
   late Animation colorAnimation;
  late AnimationController animationController;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();

    animationController = AnimationController(vsync: this, duration: Duration(seconds: 4));

    // animation = Tween(begin: 0.0,end:  200.0).animate(animationController);
    animation = Tween(begin: 400.0,end:  200.0).animate(animationController);
    colorAnimation = ColorTween(begin: Colors.yellow, end: Colors.green).animate(animationController);

    animationController.addListener((){

      setState(() {

      });
      print(animation.value);
    });


    animationController.forward();

  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
        backgroundColor: Colors.blue,
      ),
      body: Center(
        child: Container(
          width: animation.value,
          height: animation.value,
          color: colorAnimation.value,
          child: Text("Hello Developer"),

        ),
      ),
    );
  }
}