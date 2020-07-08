import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  double num1, num2, num3, sum = 0, sum1 = 0, sum2 = 0, sum3 = 0, sum4 = 0;

  // text editing controller ro control the text
  final TextEditingController t1 = TextEditingController();
  final TextEditingController t2 = TextEditingController();
  final TextEditingController t3 = TextEditingController();

  // create a function for bmi
  void bmi() {
    setState(() {
      num1 = double.parse(t1.text);
      num2 = double.parse(t2.text);
      sum = (num1 / (num2 * num2));
    });
  }

  // create a function for bmr (male)
  void bmrmale() {
    setState(() {
      num1 = double.parse(t1.text);
      num2 = double.parse(t2.text);
      num3 = double.parse(t3.text);

      sum1 = 66 + (13.7 * num1) + (5 * (100 * num2)) - (6.8 * num3);
    });
  }

  // create a function for bmr (female)
  void bmrfemale() {
    setState(() {
      num1 = double.parse(t1.text);
      num2 = double.parse(t2.text);
      num3 = double.parse(t3.text);

      sum2 = 655 + (9.6 * num1) + (1.7 * (100 * num2)) - (4.7 * num3);
    });
  }

  // create a function for calorie (male)
  void calmale() {
    setState(() {
      num1 = double.parse(t1.text);
      num2 = double.parse(t2.text);
      num3 = double.parse(t3.text);
      sum3 = (66 + (13.7 * num1) + (5 * (100 * num2)) - (6.8 * num3)) * 1.2;
    });
  }

  // create a function for calorie (female)
  void calfemale() {
    setState(() {
      num1 = double.parse(t1.text);
      num2 = double.parse(t2.text);
      num3 = double.parse(t3.text);
      sum4 = (655 + (9.6 * num1) + (1.7 * (100 * num2)) - (4.7 * num3)) * 1.2;
    });
  }

  // create a function to clear
  void doClear() {
    setState(() {
      t1.text = "0";
      t2.text = "0";
      t3.text = "0";
      sum = 0;
      sum1 = 0;
      sum2 = 0;
      sum3 = 0;
      sum4 = 0;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Calculator',
        ),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        // create a container to store all stuffs
        child: Container(
          child: Padding(
            padding: const EdgeInsets.all(12.0),
            // all things store in column
            child: Column(
              children: <Widget>[
                // create a row for bmi for output
                Row(
                  children: <Widget>[
                    Text(
                      'BMI : $sum  kg/m^2',
                      style: TextStyle(
                          fontSize: 15.0, fontWeight: FontWeight.bold),
                    )
                  ],
                ),

                SizedBox(
                  height: 5.0,
                ),

                // create a row for bmr for output
                Row(
                  children: <Widget>[
                    Text(
                      'BMR(M) : $sum1  Calories/day',
                      style: TextStyle(
                          fontSize: 15.0, fontWeight: FontWeight.bold),
                    )
                  ],
                ),

                SizedBox(
                  height: 5.0,
                ),

                // create a row for bmr for output
                Row(
                  children: <Widget>[
                    Text(
                      'BMR(F) : $sum2  Calories/day',
                      style: TextStyle(
                          fontSize: 15.0, fontWeight: FontWeight.bold),
                    )
                  ],
                ),

                SizedBox(
                  height: 5.0,
                ),

                // create a row for calorie for output
                Row(
                  children: <Widget>[
                    Text(
                      'CALORIE(M) : $sum3  kcal',
                      style: TextStyle(
                          fontSize: 15.0, fontWeight: FontWeight.bold),
                    )
                  ],
                ),

                SizedBox(
                  height: 5.0,
                ),

                // create a row for calorie for output
                Row(
                  children: <Widget>[
                    Text(
                      'CALORIE(F) : $sum4  kcal',
                      style: TextStyle(
                          fontSize: 15.0, fontWeight: FontWeight.bold),
                    )
                  ],
                ),

                SizedBox(
                  height: 10.0,
                ),

                Text('Weight',
                    style: TextStyle(
                        fontStyle: FontStyle.italic,
                        fontWeight: FontWeight.bold)),
                TextField(
                  keyboardType: TextInputType.number,
                  decoration: InputDecoration(hintText: 'Enter weight-(kg)'),
                  controller: t1,
                ),

                SizedBox(
                  height: 10.0,
                ),

                Text('Height',
                    style: TextStyle(
                        fontStyle: FontStyle.italic,
                        fontWeight: FontWeight.bold)),
                TextField(
                  keyboardType: TextInputType.number,
                  decoration: InputDecoration(hintText: 'Enter height-(m)'),
                  controller: t2,
                ),

                SizedBox(
                  height: 10.0,
                ),

                Text('Age',
                    style: TextStyle(
                        fontStyle: FontStyle.italic,
                        fontWeight: FontWeight.bold)),
                TextField(
                  keyboardType: TextInputType.number,
                  decoration: InputDecoration(hintText: 'Enter age-(y)'),
                  controller: t3,
                ),

                SizedBox(
                  height: 10.0,
                ),

                // row to create buttons
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: <Widget>[
                    // to create bmi button
                    MaterialButton(
                      child: Text(
                        'BMI',
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 18.0),
                      ),
                      color: Colors.teal,
                      onPressed: bmi,
                    ),
                    // to create bmr button
                    MaterialButton(
                      child: Text(
                        'BMR(M)',
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 18.0),
                      ),
                      color: Colors.teal,
                      onPressed: bmrmale,
                    ),
                    // to create bmr button
                    MaterialButton(
                      child: Text(
                        'BMR(F)',
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 18.0),
                      ),
                      color: Colors.teal,
                      onPressed: bmrfemale,
                    )
                  ],
                ),
                // to create new row for buttons
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: <Widget>[
                    // to create calorie button
                    MaterialButton(
                      child: Text(
                        'CAL(M)',
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 18.0),
                      ),
                      color: Colors.teal,
                      onPressed: calmale,
                    ),
                    // to create calorie button
                    MaterialButton(
                      child: Text(
                        'CAL(F)',
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 18.0),
                      ),
                      color: Colors.teal,
                      onPressed: calfemale,
                    )
                  ],
                ),
                // create new row for new button
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    // to create clear button
                    MaterialButton(
                      child: Text(
                        'Clear',
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 18.0),
                      ),
                      color: Colors.teal,
                      onPressed: doClear,
                    )
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
