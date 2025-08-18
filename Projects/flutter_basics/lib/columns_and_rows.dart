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
      home: const MyHomePage(title: 'Rows and Columns'),
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
          title: Text(widget.title,
          style: TextStyle(
              color: Colors.white
          ),
          ),
          backgroundColor: Colors.deepPurple,

        ),
        body: Container(
          color: Colors.lightGreen,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            // mainAxisAlignment: MainAxisAlignment.spaceAround,
            // mainAxisAlignment: MainAxisAlignment.spaceBetween,
            // mainAxisAlignment: MainAxisAlignment.center,
            // mainAxisAlignment: MainAxisAlignment.end,
            // mainAxisAlignment: MainAxisAlignment.start,

            crossAxisAlignment: CrossAxisAlignment.center,
            // crossAxisAlignment: CrossAxisAlignment.end,
            // crossAxisAlignment: CrossAxisAlignment.stretch,
            // crossAxisAlignment: CrossAxisAlignment.start,

            children: <Widget>[
              Container(
                color: Colors.yellow,
                child: Row(

                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Container(
                      height: 200,
                      width: 50,
                      color: Colors.red,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Text("C1"),
                          Text("C2"),
                          Text("C3"),
                          Text("C4"),
                        ],
                      ),
                    ),
                    Text("R1"),
                    Text("R2"),
                    Text("R3"),
                    Text("R4"),
                  ],
                ),
              ),
              Text("A"),
              Text("B"),
              Text("C"),
              Text("D"),
              Text("E"),
              ElevatedButton(onPressed: (){
                print("I am cliked");
              },
                  child: Text("Click Me"))
            ],
          ),
        )
        // body: Container(
        //   height: 300,
        //   color: Colors.lightGreen,
        //   child: Row(
        //     mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        //     // mainAxisAlignment: MainAxisAlignment.spaceAround,
        //     // mainAxisAlignment: MainAxisAlignment.spaceBetween,
        //     // mainAxisAlignment: MainAxisAlignment.center,
        //     // mainAxisAlignment: MainAxisAlignment.end,
        //     // mainAxisAlignment: MainAxisAlignment.start,
        //
        //     // crossAxisAlignment: CrossAxisAlignment.center,
        //     // crossAxisAlignment: CrossAxisAlignment.end,
        //     // crossAxisAlignment: CrossAxisAlignment.stretch,
        //     crossAxisAlignment: CrossAxisAlignment.start,
        //     children: <Widget>[
        //       Text("A"),
        //       Text("B"),
        //       Text("C"),
        //       Text("D"),
        //       Text("E"),
        //       ElevatedButton(onPressed: (){
        //         print("I am cliked");
        //       },
        //           child: Text("Click Me"))
        //     ],
        //   ),
        // )
    );
  }
}