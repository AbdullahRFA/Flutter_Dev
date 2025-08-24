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
      home: const MyHomePage(title: 'listViewAndItsComponent'),
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

    var arrName = ['Abdullah', 'Nazmus', 'Sakib', 'Shanto', 'Khaled', 'Tawhid'];

    return Scaffold(
      appBar: AppBar(

          title: Text(widget.title)
      ),
      // body:ListView(
      //   scrollDirection: Axis.horizontal,
      //   // reverse: true,
      //   children: [
      //     Padding(
      //       padding: const EdgeInsets.all(8.0),
      //       child: Text("One",
      //       style: TextStyle(
      //         fontSize: 20,
      //         fontWeight: FontWeight.bold,
      //       ),
      //       ),
      //     ), Padding(
      //       padding: const EdgeInsets.all(8.0),
      //       child: Text("Two",
      //       style: TextStyle(
      //         fontSize: 20,
      //         fontWeight: FontWeight.bold,
      //       ),
      //       ),
      //     ), Padding(
      //       padding: const EdgeInsets.all(8.0),
      //       child: Text("Three",
      //       style: TextStyle(
      //         fontSize: 20,
      //         fontWeight: FontWeight.bold,
      //       ),
      //       ),
      //     ), Padding(
      //       padding: const EdgeInsets.all(8.0),
      //       child: Text("Four",
      //       style: TextStyle(
      //         fontSize: 20,
      //         fontWeight: FontWeight.bold,
      //       ),
      //       ),
      //     ), Padding(
      //       padding: const EdgeInsets.all(8.0),
      //       child: Text("Five",
      //       style: TextStyle(
      //         fontSize: 20,
      //         fontWeight: FontWeight.bold,
      //       ),
      //       ),
      //     ), Padding(
      //       padding: const EdgeInsets.all(8.0),
      //       child: Text("Six",
      //       style: TextStyle(
      //         fontSize: 20,
      //         fontWeight: FontWeight.bold,
      //       ),
      //       ),
      //     ),
      //   ],
      // )
      // body: ListView.builder(itemBuilder:(context, index){
      //   return Text(arrName[index],
      //   style: TextStyle(
      //     fontSize: 21,
      //     fontWeight: FontWeight.bold,
      //   ),
      //   );
      // },
      // itemCount: arrName.length,
      //   // reverse: true,
      //   // scrollDirection: Axis.horizontal,
      //   scrollDirection: Axis.vertical,
      //   itemExtent: 200,
      // ),

      body: ListView.separated(itemBuilder:(context, index){
        return ListTile(
            leading: Text('${index+1}'),
            title: Text(arrName[index]),
            subtitle: Text("Number"),
            trailing: Icon(Icons.access_alarm),
        );

      },
        itemCount: arrName.length,
        // reverse: true,
        // scrollDirection: Axis.horizontal,
        scrollDirection: Axis.vertical,
        separatorBuilder: (context, index){
          return Divider(height: 40, thickness: 1,)  ;
        },
      ),

    );
  }
}