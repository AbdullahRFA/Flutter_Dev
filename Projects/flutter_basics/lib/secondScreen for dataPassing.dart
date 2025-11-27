import 'package:flutter/material.dart';

class WelcomeUser extends StatefulWidget {
  final String nameFromHome;

  const WelcomeUser({super.key, required this.nameFromHome});

  @override
  State<WelcomeUser> createState() => _WelcomeUserState();
}

class _WelcomeUserState extends State<WelcomeUser> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Welcome Page"),
        backgroundColor: Colors.yellow,
      ),
      body: Center(
        child: Container(
          height: 300,
          width: 400,
          color: Colors.grey,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "Welcome ${widget.nameFromHome}",
                style: const TextStyle(
                  fontStyle: FontStyle.italic,
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}