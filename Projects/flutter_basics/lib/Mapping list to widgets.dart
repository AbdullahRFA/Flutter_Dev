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
  var names = [
    "Arjun",
    "Rafiya",
    "Sakib",
    "Mahir",
    "Anika",
    "Zara",
    "Hasib",
    "Nishat",
    "Imran",
    "Tania",
    "Arif",
    "Lamia",
    "Farhan",
    "Sadia",
    "Ayaan",
  ];
 var personInfo = [
  {
  "name": "Abdullah",
  "phone": "01716260866",
  "unread": 3
  },
  {
  "name": "Rafiya",
  "phone": "01855230011",
  "unread": 5
  },
  {
  "name": "Sakib",
  "phone": "01911220988",
  "unread": 1
  },
  {
  "name": "Nishat",
  "phone": "01677889933",
  "unread": 0
  },
  {
  "name": "Farhan",
  "phone": "01544332211",
  "unread": 8
  },
  {
  "name": "Tania",
  "phone": "01700445566",
  "unread": 2
  },
  {
  "name": "Imran",
  "phone": "01822009911",
  "unread": 6
  },
  {
  "name": "Lamia",
  "phone": "01699001122",
  "unread": 4
  },
  {
  "name": "Anika",
  "phone": "01977220033",
  "unread": 7
  },
  {
  "name": "Ayaan",
  "phone": "01588443322",
  "unread": 9
  }
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
        backgroundColor: Colors.blue,
      ),
      body: Container(
        child: ListView(
          children: personInfo.map(
              (value){
                return ListTile(
                  leading: Icon(Icons.account_circle_outlined),
                  title:Text(value["name"].toString()),
                  subtitle: Text(value['phone'].toString()),
                  trailing: CircleAvatar(
                      radius: 15,
                    backgroundColor: Colors.green,
                      child: Text(value['unread'].toString(),
                      style: TextStyle(
                        color: Colors.white,
                      ),
                      ),
                  ),
                );
              }
          ).toList(),
        ),
      )
    );
  }
}