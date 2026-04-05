import 'package:bmi_calculator_ll/enum_active.dart';
import 'package:bmi_calculator_ll/gender_section.dart';
import 'package:flutter/material.dart';


class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  double height = 170;
  int weight = 60;
  int age = 20;
  Gender selectedGender = Gender.male;
  ActiveCard activeCard = ActiveCard.height;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF03051A),
      appBar: AppBar(
        elevation: 1,
        backgroundColor: Color(0xFF04061D),
        title: Text(
          "BMI Calculator",
          style: TextStyle(color: Colors.white, fontSize: 25),
        ),
      ),

      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          GenderSection(
            selectedGender: selectedGender,
            onSelect: (gender) {
              setState(() {
                selectedGender = gender;
              });
            },
          ),
          SizedBox(height: 8),
      
      ],
      ),
    );
  }
}

         