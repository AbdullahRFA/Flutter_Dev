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

  var _height = 200.0;
  var _width = 300.0;


  Decoration mydeco = BoxDecoration(
    borderRadius: BorderRadius.circular(10),
        color: Colors.green
  );

  bool flag = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
        backgroundColor: Colors.blue,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            AnimatedContainer(
                height: _height,
                width: _width,
                duration: Duration(seconds: 2),
              curve: Curves.slowMiddle,
              decoration: mydeco,
            ),
            SizedBox(
              height: 30,
            ),
            ElevatedButton(
                onPressed: (){
                  setState(() {
                    if(flag){
                      _height = 300.0;
                      _width = 200.0;
                      mydeco = BoxDecoration(
                        borderRadius: BorderRadius.only(topLeft: Radius.circular(21), bottomRight: Radius.circular(21)),
                          color: Colors.red
                      );
                      flag = false;
                    }
                    else{

                    _height = 200;
                    _width = 300;
                    mydeco = BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.green
                    );
                    flag = true;
                    }
                  });
                },
                child: Text("Animate")
            ),
          ],
        ),
        
      ),
    );
  }
}