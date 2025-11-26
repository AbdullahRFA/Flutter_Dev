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
      home: const MyHomePage(title: 'custom widgets'),
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
      body: Container(
        child: Column(
          children: [
            catItem(),
            contactItem(),
            subCatItem(),
            Expanded(
              flex: 2,
              child: Container(

                color: Colors.yellow,
              ),
            ),
            Expanded(
              flex: 4,
              child: Container(

                color: Colors.white,
              ),
            ),
            Expanded(
              flex: 2,
              child: Container(

                color: Colors.greenAccent,
              ),
            ),
          ],
        ),
      )
    );
  }
}

class catItem extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
   return Expanded(
      flex: 4,
      child: Container(

        color: Colors.white70,
        child: ListView.builder(itemBuilder: (context, index)=> Padding(
          padding: const EdgeInsets.all(8.0),
          child: SizedBox(
            width: 100,
            child: CircleAvatar(
              backgroundColor: Colors.green,
            ),
          ),

        ),
          itemCount: 10,
          scrollDirection: Axis.horizontal,
        ),
      ),
    );
  }

}
class contactItem extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: 6,
      child: Container(
        child: ListView.builder(itemBuilder: (context, index) =>
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: ListTile(
                  leading: CircleAvatar(
                    backgroundColor: Colors.green,
                  ),
                  title: Text("Name"),
                  subtitle: Text("Mob Number"),
                  trailing: Icon(Icons.delete)
              ),
            ),
          itemCount: 10,
          scrollDirection: Axis.vertical,
        ),

        color: Colors.red,
      ),
    );
  }
}

class subCatItem extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return  Expanded(
      flex: 4,
      child: Container(

        color: Colors.green,
        child: ListView.builder(itemBuilder: (context, index)=>
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                width: 200,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(10),
                ),
              ),
            ),
          itemCount: 10,
          scrollDirection: Axis.horizontal,
        ),
      ),
    );
  }
}