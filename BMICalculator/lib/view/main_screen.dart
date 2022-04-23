import 'dart:io';
import 'dart:math';

import 'package:bmicalculator/view/result_screen.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({Key? key}) : super(key: key);

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  bool isMale = true;
  double height = 120;
  int weight = 60;
  int age = 20;
  double result = 0;
  var mainController = TextEditingController();

  final Color unSelectedColor = const Color.fromRGBO(44, 62, 88, 1);
  final Color selectedColor = const Color.fromRGBO(100, 30, 22, 1);
  final Color backgroundColor = const Color.fromRGBO(23, 32, 42, 1);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "BMI Calculator",
          style: TextStyle(
              fontSize: 30, fontWeight: FontWeight.w700, color: Colors.white),
          // TextStyle
        ),
        centerTitle: true,
        backgroundColor: backgroundColor,
      ),
      body: Container(
        color: Colors.blueGrey,
        child: Column(
          children: [
            Flexible(
              flex: 30,
              child: Padding(
                padding: const EdgeInsets.all(10.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Expanded(
                      flex: 45,
                      child: GestureDetector(
                        onTap: () {
                          setState(() {
                            isMale = true;
                          });
                        },
                        child: Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: isMale ? selectedColor : unSelectedColor,
                          ),
                          child: Column(
                            children: const [
                              SizedBox(
                                height: 20,
                              ),
                              FaIcon(
                                FontAwesomeIcons.person,
                                color: Colors.orange,
                                size: 130,
                              ),
                              SizedBox(
                                height: 15,
                              ),
                              Text(
                                "Male",
                                style: TextStyle(
                                    fontSize: 30,
                                    fontWeight: FontWeight.w700,
                                    color: Colors.white70),
                              ), // TextStyle)
                            ],
                          ),
                        ),
                      ),
                    ),
                    const Expanded(
                        flex: 5,
                        child: SizedBox(
                          height: 50,
                        )),
                    Expanded(
                      flex: 45,
                      child: GestureDetector(
                        onTap: () {
                          setState(() {
                            isMale = false;
                          });
                        },
                        child: Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: isMale ? unSelectedColor : selectedColor,
                          ),
                          child: Column(
                            children: const [
                              SizedBox(
                                height: 20,
                              ),
                              FaIcon(
                                FontAwesomeIcons.personDress,
                                color: Colors.orange,
                                size: 130,
                              ),
                              SizedBox(
                                height: 15,
                              ),
                              Text(
                                "Female",
                                style: TextStyle(
                                    fontSize: 30,
                                    fontWeight: FontWeight.w700,
                                    color: Colors.white70),
                              ), // TextStyle)
                            ],
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Flexible(
              flex: 30,
              child: Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 10,
                ),
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: unSelectedColor,
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(15.0),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        const Text(
                          "Height",
                          style: TextStyle(
                              fontSize: 45,
                              fontWeight: FontWeight.w700,
                              color: Colors.white70),
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.baseline,
                          textBaseline: TextBaseline.alphabetic,
                          children: [
                            Text(
                              "${height.round()} ",
                              style: const TextStyle(
                                fontSize: 55,
                                fontWeight: FontWeight.w700,
                                color: Colors.blue,
                              ),
                            ),
                            const Text(
                              "CM",
                              style: TextStyle(
                                  fontSize: 20,
                                  fontWeight: FontWeight.w700,
                                  color: Colors.white70), // TextStyle
                            ),
                          ],
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        Slider(
                            value: height,
                            max: 250,
                            min: 50,
                            activeColor: Colors.amberAccent,
                            onChanged: (value) {
                              setState(() {
                                height = value;
                              });
                            })
                      ],
                    ),
                  ),
                ),
              ),
            ),
            Flexible(
              flex: 30,
              child: Padding(
                padding: const EdgeInsets.all(10.0),
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: unSelectedColor,
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Flexible(
                        flex: 40,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Column(
                                  children: [
                                    const Text(
                                      "Weight",
                                      style: TextStyle(
                                          fontSize: 35,
                                          fontWeight: FontWeight.w700,
                                          color: Colors.white),
                                    ),
                                    Text(
                                      "${weight}",
                                      style: const TextStyle(
                                          fontSize: 45,
                                          fontWeight: FontWeight.w700,
                                          color: Colors.white),
                                    ),
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.center,
                                      children: [
                                        FloatingActionButton(
                                          mini: true,
                                          child: const Icon(Icons.add),
                                          onPressed: () {
                                            setState(() {
                                              weight++;
                                            });
                                          },
                                        ),
                                        FloatingActionButton(
                                          mini: true,
                                          child: const Icon(Icons.remove),
                                          onPressed: () {
                                            setState(() {
                                              weight--;
                                            });
                                          },
                                        ),
                                      ],
                                    ),
                                  ],
                                )
                              ],
                            )
                          ],
                        ),
                      ),
                      const Flexible(
                          flex: 20,
                          child: SizedBox(
                            width: 10,
                          )),
                      Flexible(
                        flex: 40,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Column(
                                  children: [
                                    const Text(
                                      "Age",
                                      style: TextStyle(
                                          fontSize: 35,
                                          fontWeight: FontWeight.w700,
                                          color: Colors.white),
                                    ),
                                    Text(
                                      "${age}",
                                      style: const TextStyle(
                                          fontSize: 45,
                                          fontWeight: FontWeight.w700,
                                          color: Colors.white),
                                    ),
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.center,
                                      children: [
                                        FloatingActionButton(
                                          mini: true,
                                          child: const Icon(Icons.add),
                                          onPressed: () {
                                            setState(() {
                                              age++;
                                            });
                                          },
                                        ),
                                        FloatingActionButton(
                                          mini: true,
                                          child: const Icon(Icons.remove),
                                          onPressed: () {
                                            setState(() {
                                              age--;
                                            });
                                          },
                                        ),
                                      ],
                                    ),
                                  ],
                                )
                              ],
                            )
                          ],
                        ),
                      ),
                    ],
                  ),
                  //child: ,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Container(
                height: 50,
                width: double.infinity,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Colors.amber,
                ),
                child: MaterialButton(
                  child: const Text(
                    "Calculate My BMI",
                    style: TextStyle(
                        fontSize: 25,
                        fontWeight: FontWeight.w900,
                        color: Colors.black54),
                  ),
                  onPressed: () {
                    result = weight / pow(height / 100, 2);
                    displayDialog(context);
                  },
                ),
              ),
            )
          ],
        ),
      ),
    );
  }

  Future<void> displayDialog(BuildContext context) {
    return showDialog(
        context: context,
        builder: (context) {
          return AlertDialog(
            title: const Text("Enter Your Name:"),
            content: TextFormField(
              controller: mainController,
              keyboardType: TextInputType.text,
              onChanged: (value) {
                mainController.text = value;
              },
            ),
            actions: [
              TextButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => ResultScreen(
                              result: result.round(),
                              isMale: isMale,
                              height: height.round(),
                              weight: weight,
                              age: age,
                              name: mainController.text,
                            )),
                  );
                },
                style: TextButton.styleFrom(
                  padding: const EdgeInsets.all(16.0),
                  backgroundColor: Colors.green,
                  primary: Colors.white,
                  textStyle: const TextStyle(fontSize: 20),
                ),
                child: const Text('OK'),
              ),
              TextButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                style: TextButton.styleFrom(
                  padding: const EdgeInsets.all(16.0),
                  backgroundColor: Colors.red,
                  primary: Colors.white,
                  textStyle: const TextStyle(fontSize: 20),
                ),
                child: const Text('Cancel'),
              ),
            ],
          );
        });
  }
}
