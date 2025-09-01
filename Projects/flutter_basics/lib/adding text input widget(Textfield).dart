import 'package:flutter/material.dart';
void main() {
  runApp(FlutterApp());
}

class FlutterApp extends StatelessWidget{
  const FlutterApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "My flutter app",
      // theme: ThemeData(
      //   useMaterial3: false,
      //   primarySwatch: Colors.blue
      // ),

      // If you want all AppBars in your app to have the same color:
      theme: ThemeData(
        useMaterial3: true, // you can keep Material 3 if you like
        appBarTheme: const AppBarTheme(
          backgroundColor: Colors.blue,
          foregroundColor: Colors.white, // text & icon color
        ),
      ),
      home: DashBoardScreen(),
    );
  }

}
class DashBoardScreen extends StatefulWidget{
  const DashBoardScreen({Key? key}) : super(key:key);
  @override
  State<DashBoardScreen> createState() => _DashBoardScreen();
}

class _DashBoardScreen extends State<DashBoardScreen>{

  var emailText = TextEditingController();
  var password = TextEditingController();
  var phone_number = TextEditingController();

  String email = '';
  String password_text = '';
  String phone = '';
  void showDataOnScreen(){
    setState(() {
      email = "Email: ${emailText.text}";
      password_text = "Password: ${password.text}";
      phone = "Phone: ${phone_number.text}";
      emailText.clear();
      password.clear();
      phone_number.clear();
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Dashboard"),
        // backgroundColor: Colors.blue,

      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Container(
          color: Colors.blue.shade50,
          child: Column(
            children: [
              TextField(
                controller: emailText,

                decoration: InputDecoration(
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(12),
                    borderSide: BorderSide(
                      color: Colors.green,
                      width: 1,
                    )
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                    borderSide: BorderSide(
                      color: Colors.blue,
                      width: 1,
                    )

                  ),
                  prefixIcon: Icon(Icons.email,
                  color: Colors.red,
                  ),
                  // border: OutlineInputBorder(
                  //   borderRadius: BorderRadius.circular(10),
                  // ),
                  labelText: "Enter your email"
                ),
                textInputAction: TextInputAction.search,
                onSubmitted: (value){
                  showDataOnScreen();
                },

              ),
              SizedBox(height: 10,),
              TextField(

                controller: password,
                obscureText: true,
                // obscuringCharacter: "*",

                decoration: InputDecoration(
                    enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(12),
                        borderSide: BorderSide(
                          color: Colors.green,
                          width: 1,
                        )
                    ),
                    focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                        borderSide: BorderSide(
                          color: Colors.blue,
                          width: 1,
                        )

                    ),
                    suffixText: "Password",
                    suffixIcon: IconButton(onPressed: (){
                      print("Your search ---- ");
                    }, 
                        icon: Icon(Icons.password)
                    ),
                    // border: OutlineInputBorder(
                    //   borderRadius: BorderRadius.circular(10),
                    // ),
                    labelText: "Enter your password"
                ),
                textInputAction: TextInputAction.search,
                onSubmitted: (value){
                  showDataOnScreen();
                },
              ),
              SizedBox(height: 10,),
              TextField(
                controller: phone_number,
                keyboardType: TextInputType.phone,
                // enabled: false,

                decoration: InputDecoration(
                    enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(12),
                        borderSide: BorderSide(
                          color: Colors.green,
                          width: 1,
                        )
                    ),
                    focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                        borderSide: BorderSide(
                          color: Colors.blue,
                          width: 1,
                        )

                    ),
                    disabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                      borderSide: BorderSide(
                      color: Colors.blue,
                      width: 1,
                    ),
                    ),
                    hintText: "Enter your user name",
                    suffixIcon: Icon(Icons.phone,
                    color: Colors.orange,
                    ),

                    // border: OutlineInputBorder(
                    //   borderRadius: BorderRadius.circular(10),
                    // ),
                    labelText: "Enter your phone number"
                ),
                textInputAction: TextInputAction.search,
                onSubmitted: (value){
                  showDataOnScreen();
                },
              ),
              SizedBox(height: 10,),
              ElevatedButton(onPressed: (){
                showDataOnScreen();
                print("email:  ${emailText.text}");
                print("password:  ${password.text}");
                print("Phone_number ${phone_number.text}");

              },
                  child: Text("Show inserted data")
              ),


              if(email.isNotEmpty & password_text.isNotEmpty & phone.isNotEmpty)
                Column(
                  children: [
                    Text(email,
                    style: TextStyle(
                      fontSize: 21,
                      color: Colors.green
                    ),
                    ),
                    SizedBox(height: 12,),
                    Text(password_text,
                      style: TextStyle(
                          fontSize: 21,
                          color: Colors.green
                      ),
                    ),
                    SizedBox(height: 12,),
                    Text(phone,
                      style: TextStyle(
                          fontSize: 21,
                          color: Colors.green
                      ),
                    )
                  ],
                )

            ],
          ),
        ),
      ),
    );
  }

}