
import 'package:bmi_calculator_ll/home_page.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const BmiApp());
}

class BmiApp extends StatelessWidget {
  const BmiApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Home(),
    );
  }
}

































// import 'package:flutter/material.dart';
// import 'package:section_13_apptesk_1/home_page.dart';
// import 'package:section_13_apptesk_1/home_page.dart';

// void main() {
//   runApp(BimCalculator());
// }

// class BimCalculator extends StatelessWidget {
//   const BimCalculator({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       debugShowCheckedModeBanner: false,
//       home: Scaffold(
//         appBar: AppBar(
//           title: Text(
//             "BMI CALCULATOR",
//             style: TextStyle(
//               color: Colors.white,
//               fontSize: 24,
//               fontWeight: FontWeight.bold,
//             ),
//           ),
//           backgroundColor: Color.fromARGB(255, 10, 17, 86),
//         ),
//         body: Column(children: [HomePage()]),
//       ),
//     );
//   }
// }
