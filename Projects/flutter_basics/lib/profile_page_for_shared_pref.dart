import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:flutter_basics/real life usages of shared preference.dart';

class Profile extends StatefulWidget{
  @override
  State<Profile> createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {

  var email = '';
  var password = '';

  @override
  void initState() {
    // TODO: implement initState
    super.initState();

    _loadInfo();
  }

  Future<void> _loadInfo() async {

    var pref = await SharedPreferences.getInstance();
     email = pref.getString("email") ?? "";
     password = pref.getString("password") ?? "";
     setState(() {

     });

    print("Email: $email");
    print("Password: $password");

  }
  @override
  Widget build(BuildContext context) {



    return Scaffold(
      appBar: AppBar(
        title: Text("Profile"),
        backgroundColor: Colors.blue,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("Welcome $email",
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
            ),
            SizedBox(
              height: 30,
            ),
            ElevatedButton(onPressed: () async {
              var pref =await SharedPreferences.getInstance();
              pref.remove("email");
              pref.remove("password");
              Navigator.pushReplacement(context, MaterialPageRoute(builder: (context){
                return  MyHomePage(title: 'Container');
              }

              ));
            },
                child: Text("LogOut"))
          ],
        ),
      ),
    );
  }
}