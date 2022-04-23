import 'package:flutter/material.dart';

class ResultScreen extends StatefulWidget {
  const ResultScreen(
      {Key? key,
      required this.result,
      required this.isMale,
      required this.height,
      required this.weight,
      required this.age,
      required this.name})
      : super(key: key);

  final Color unSelectedColor = const Color.fromRGBO(44, 62, 88, 1);
  final Color selectedColor = const Color.fromRGBO(100, 30, 22, 1);
  final Color backgroundColor = const Color.fromRGBO(23, 32, 42, 1);

  final int result;
  final bool isMale;
  final int height;
  final int weight;
  final int age;
  final String name;
  String finalResult='';
  if( result < 18.5 ){
  finalResult='aaa';
  }else if



  @override
  State<ResultScreen> createState() => _ResultScreenState();
}

class _ResultScreenState extends State<ResultScreen> {

  String finalResult='';
  if(result<18.5){
  finalResult='aaa';
  }

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
        backgroundColor: widget.backgroundColor,
      ),
      body: Container(
        width: double.infinity,
        color: widget.unSelectedColor,
        child: Column(
          //mainAxisAlignment: MainAxisAlignment.center,
          //crossAxisAlignment: CrossAxisAlignment.center,
          children: [
             Padding(
              padding: const EdgeInsets.all(20.0),
              child: Text(
                "Hello ${widget.name}",
                style: const TextStyle(
                    fontSize: 45,
                    fontWeight: FontWeight.w700,
                    color: Colors.white),
              ),
            ),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 20.0),
              child: Text(
                "Your Result: ",
                style: TextStyle(
                    fontSize: 45,
                    fontWeight: FontWeight.w700,
                    color: Colors.white),
              ),
            ),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.all(20.0),
                child: Container(
                  width: double.infinity,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: const Color.fromRGBO(33, 50, 61, 1),
                  ),
                  child: Column(
                    children: [
                      Text(
                        widget.isMale?"Male":"Female",
                        style: const TextStyle(
                            fontSize: 35,
                            fontWeight: FontWeight.w400,
                            color: Colors.orange),
                      ),
                      Text(
                        "Weight: ${widget.weight}",
                        style: const TextStyle(
                            fontSize: 35,
                            fontWeight: FontWeight.w400,
                            color: Colors.orange),
                      ),
                      Text(
                        "Height: ${widget.height}",
                        style: const TextStyle(
                            fontSize: 35,
                            fontWeight: FontWeight.w400,
                            color: Colors.orange),
                      ),
                      Text(
                        "Age: ${widget.age}",
                        style: const TextStyle(
                            fontSize: 35,
                            fontWeight: FontWeight.w400,
                            color: Colors.orange),
                      ),
                      Text(
                        "${widget.result}",
                        style: const TextStyle(
                            fontSize: 45,
                            fontWeight: FontWeight.w700,
                            color: Colors.white),
                      ),
                      const Text(
                        "You are Morbid Obisity",
                        style: TextStyle(
                            fontSize: 45,
                            fontWeight: FontWeight.w700,
                            color: Colors.white),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
