import 'package:flutter/material.dart';

class ResultPage extends StatelessWidget {
  const ResultPage({
    super.key,
    required this.bmi,
    required this.resultText,
    required this.description,
  });

  final String bmi;
  final String resultText;
  final String description;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF03051A),
      appBar: AppBar(
        elevation: 1,
        backgroundColor: Color(0xFF04061D),
        title: Text(
          "BMI RESULT",
          style: TextStyle(color: Colors.white, fontSize: 25),
        ),
      ),

      body: Column(
        children: [
          SizedBox(height: 30),

          Text(
            "Your Result",
            style: TextStyle(
              color: Colors.white,
              fontSize: 35,
              fontWeight: FontWeight.bold,
            ),
          ),

          SizedBox(height: 20),

          Expanded(
            child: Container(
              margin: EdgeInsets.all(20),
              width: double.infinity,

              decoration: BoxDecoration(
                color: Color(0xFF17172F),
                borderRadius: BorderRadius.circular(10),
              ),

              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Text(
                    resultText,
                    style: TextStyle(
                      color: Colors.green,
                      fontSize: 50,
                      fontWeight: FontWeight.bold,
                    ),
                  ),

                  Text(
                    bmi,
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 80,
                      fontWeight: FontWeight.bold,
                    ),
                  ),

                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 20),
                    child: Text(
                      description,
                      textAlign: TextAlign.center,
                      style: TextStyle(color: Colors.white70, fontSize: 25),
                    ),
                  ),
                ],
              ),
            ),
          ),

          GestureDetector(
            onTap: () {
              Navigator.pop(context);
            },
            child: Container(
              height: 70,
              width: double.infinity,
              color: Color(0xFFED0D54),
              child: Center(
                child: Text(
                  "RE-CALCULATE",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
