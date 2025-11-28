import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

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
      home: const MyHomePage(title: 'Shared Preference'),
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
  final TextEditingController _controller = TextEditingController();

  String userName = "You don't save anything";

  @override
  void initState() {
    super.initState();
    _loadSavedName();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  Future<void> _loadSavedName() async {
    final pref = await SharedPreferences.getInstance();
    // use a safe fallback if the key doesn't exist
    final saved = pref.getString("name") ?? "";
    setState(() {
      userName = saved.isNotEmpty ? saved : "You don't save anything";
    });
  }

  Future<void> _saveName() async {
    final name = _controller.text.trim();
    if (name.isEmpty) {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(content: Text('Please enter a name')),
      );
      return;
    }

    final pref = await SharedPreferences.getInstance();
    await pref.setString("name", name);

    // update UI
    setState(() {
      userName = name;
      _controller.clear();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
        backgroundColor: Colors.blue,
      ),
      body: Center(
        child: SizedBox(
          height: 260,
          width: 320,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              TextField(
                controller: _controller,
                decoration: InputDecoration(
                  label: const Text("Enter your name"),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                  hintText: "Enter your name",
                  suffixIcon: const Icon(Icons.person),
                  filled: true,
                ),
                keyboardType: TextInputType.name,
              ),
              const SizedBox(height: 20),
              ElevatedButton(onPressed: _saveName, child: const Text("Save")),
              const SizedBox(height: 20),
              Text(
                "Welcome $userName",
                style: const TextStyle(fontSize: 18),
              ),
            ],
          ),
        ),
      ),
    );
  }
}