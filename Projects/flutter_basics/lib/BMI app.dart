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
      home: const MyHomePage(title: 'BMI App'),
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

  var weightController = TextEditingController();
  var feetController = TextEditingController();
  var inchController = TextEditingController();
  var resultText = "---";
  var status = '';

  TextStyle statusStyle = TextStyle(
    fontSize: 25,
    fontWeight: FontWeight.bold,
    color: Colors.green
  ) ;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
        backgroundColor: Colors.blue,
      ),
      body:Center(
        child: SizedBox(
          width: 300,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text("BMI",
              style: TextStyle(
                fontSize: 33,
                fontWeight: FontWeight.bold
              ),
              ),

              SizedBox(
                height: 21,
              ),

              TextField(
                controller: weightController,
                decoration: InputDecoration(
                  label: Text("Enter your weight in KG"),
                  prefixIcon: Icon(Icons.line_weight)

                ),
                keyboardType: TextInputType.number,
              ),

              SizedBox(
                height: 11,
              ),

              TextField(
                controller: feetController,
                decoration: InputDecoration(
                    label: Text("Enter your height in feet"),
                    prefixIcon: Icon(Icons.height)

                ),
                keyboardType: TextInputType.number,
              ),

              SizedBox(
                height: 11,
              ),

              TextField(
                controller: inchController,
                decoration: InputDecoration(
                    label: Text("Enter your weight in inch"),
                    prefixIcon: Icon(Icons.height_outlined)

                ),
                keyboardType: TextInputType.number,
              ),

              SizedBox(
                height: 21,
              ),

              ElevatedButton(
                  onPressed: (){
                      var weight = double.parse(weightController.text.toString());
                      var feet = double.parse(feetController.text.toString());
                      var inch = double.parse(inchController.text.toString());

                      if (weight <= 0 || feet <= 0 || inch <= 0) {
                        setState(() {

                        resultText = "Please fill all requirements";
                        });
                      } else {
                        setState(() {

                        var totalInch = (feet * 12) + inch;
                        var totalCm = totalInch * 2.54;
                        var totalM = totalCm / 100;
                        var bmi = weight / (totalM * totalM);

                        if(bmi < 18.5){
                          status = "Underweight";
                          statusStyle = TextStyle(
                              fontSize: 25,
                              fontWeight: FontWeight.bold,
                              color: Colors.red
                          );
                        } else if(bmi >= 18.5 && bmi <= 24.9){
                          status = "Normal";
                          statusStyle = TextStyle(
                              fontSize: 25,
                              fontWeight: FontWeight.bold,
                              color: Colors.green
                          );
                        } else if(bmi >= 25 && bmi <= 29.9){
                          status = "Overweight";
                          statusStyle = TextStyle(
                              fontSize: 25,
                              fontWeight: FontWeight.bold,
                              color: Colors.orange
                          );
                        } else {
                          status = "Obese";
                          statusStyle = TextStyle(
                              fontSize: 25,
                              fontWeight: FontWeight.bold,
                              color: Colors.red
                          );
                        }

                        resultText = "Your BMI is: ${bmi.toStringAsFixed(2)}";
                        });
                      }

                      weightController.clear();
                      feetController.clear();
                      inchController.clear();
                      print(resultText);


                  },
                  child: Text("Calculate")
              ),

              SizedBox(
                height: 21,
              ),

              RichText(
                text: TextSpan(
                  style: const TextStyle(
                      fontSize: 23,
                      color: Colors.grey
                  ),
                  children: <TextSpan>[
                    TextSpan(text: resultText),
                    if (status.isNotEmpty)
                      TextSpan(
                        text: "\nYour BMI status is: $status",
                        style: statusStyle,
                      ),
                  ],
                ),
              ),


            ],
          ),
        ),
      ),
    );
  }
}