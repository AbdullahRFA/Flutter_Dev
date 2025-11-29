import 'package:flutter/material.dart';
import 'package:flutter_basics/profile_page_for_shared_pref.dart';
import 'package:flutter_basics/splashScreenForSharedPref.dart';
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
      home: SplashScreen(),
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
  void initState() {
    // TODO: implement initState
    super.initState();
    _loadInfo();
  }

  Future<void> _loadInfo() async {
    var pref = await SharedPreferences.getInstance();
    var email = pref.getString("email") ?? "";
    var password = pref.getString("password") ?? "";

    if (email.isNotEmpty && password.isNotEmpty) {
      Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) {
            return Profile();
          },
        ),
      );
    }
  }

  var emailController = TextEditingController();
  var passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(widget.title), backgroundColor: Colors.blue),
      body: Center(
        child: Container(
          height: 300,
          width: 300,
          // color: Colors.limeAccent,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              TextField(
                controller: emailController,
                decoration: InputDecoration(
                  label: Text("Email"),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                  hintText: "Enter your email",
                  suffixIcon: Icon(Icons.email),
                  filled: true,
                ),
              ),
              SizedBox(height: 30),
              TextField(
                controller: passwordController,
                decoration: InputDecoration(
                  label: Text("Password"),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                  hintText: "Enter your password",
                  suffixIcon: Icon(Icons.password),
                  filled: true,
                ),
              ),
              SizedBox(height: 30),
              ElevatedButton(
                onPressed: () async {
                  var email = emailController.text.toString();
                  var password = passwordController.text.toString();
                  // print("Email: $email");
                  // print("Password: $password");

                  var pref = await SharedPreferences.getInstance();
                  pref.setString("email", email);
                  pref.setString("password", password);

                  Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(
                      builder: (context) {
                        return Profile();
                      },
                    ),
                  );
                },
                child: Text("Login"),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
