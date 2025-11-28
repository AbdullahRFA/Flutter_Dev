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

  late Animation animation ;
  late AnimationController animationController ;

  var listRadius = [150.0,200.0,250.0,300.0,350.0];

  @override
  void initState() {
    // TODO: implement initState
    super.initState();

    animationController = AnimationController(vsync: this, duration: Duration(seconds: 1));
    animation = Tween(begin: 0.0, end: 1.0).animate(animationController);

    animationController.addListener((){
          setState(() {

          });
    });
    animationController.repeat();

  }
  var flag = true;



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
        backgroundColor: Colors.blue,
      ),
      body: Center(
        child: Stack(
          alignment: Alignment.center,
          children: [
            BuildMyContainer(listRadius[0]),
            BuildMyContainer(listRadius[1]),
            BuildMyContainer(listRadius[2]),
            BuildMyContainer(listRadius[3]),
            BuildMyContainer(listRadius[4]),
            Icon(Icons.add_call,size: 30,)
          ],
          ),
        ),

    );
  }


  Widget BuildMyContainer(radius){
    return Container(
    decoration: BoxDecoration(
    // borderRadius: BorderRadius.all(Radius.circular(50)),
    shape: BoxShape.circle,
  color: Colors.green.withOpacity(1.0 - animation.value),
  ),
  height: radius*animation.value,
  width: radius*animation.value,
  );
  }


}

