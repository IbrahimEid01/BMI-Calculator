
import 'package:flutter/material.dart';

class HeightSection extends StatelessWidget {
  const HeightSection({
    super.key,
    required this.height,
    required this.onChanged,
    required this.isSelected,
    required this.onTap,
  });

  final double height;
  final ValueChanged onChanged;
  final bool isSelected;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        margin: const EdgeInsets.all(10),
        padding: const EdgeInsets.all(10),
        decoration: BoxDecoration(
          color: isSelected ? Color(0xFF17172F) : Color(0xFF090B24),
          borderRadius: BorderRadius.circular(10),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              "HEIGHT",
              style: TextStyle(fontSize: 20, color: Color(0xFF888797)),
            ),

            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "${height.round()}",
                  style: const TextStyle(
                    fontSize: 50,
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                  ),
                ),

                Text(
                  "cm",
                  style: const TextStyle(
                    fontSize: 20,
                    color: Color(0xFF888797),
                  ),
                ),
              ],
            ),

            Slider(
              value: height,
              min: 100,
              max: 200,
              onChanged: (value) {
                onChanged(value);
                onTap();
              },

              activeColor: Colors.white,
              inactiveColor: Colors.grey,
              thumbColor: Colors.pink,
            ),
          ],
        ),
      ),
    );
  }
}






























// import 'package:flutter/material.dart';

// class HeightSection extends StatelessWidget {
//   const HeightSection({
//     super.key,
//     required this.height,
//     required this.onChanged,
//   });

//   final double height;
//   final ValueChanged<double> onChanged;

//   @override
//   Widget build(BuildContext context) {
//     return Expanded(
//       child: Container(
//         margin: const EdgeInsets.all(10),
//         padding: const EdgeInsets.all(20),
//         decoration: BoxDecoration(
//           color: const Color(0xff1D1E33),
//           borderRadius: BorderRadius.circular(15),
//         ),
//         child: Column(
//           mainAxisAlignment: MainAxisAlignment.center,
//           children: [
//             const Text(
//               "HEIGHT",
//               style: TextStyle(
//                 color: Colors.grey,
//                 fontSize: 18,
//               ),
//             ),

//             const SizedBox(height: 10),

//             Row(
//               mainAxisAlignment: MainAxisAlignment.center,
//               crossAxisAlignment: CrossAxisAlignment.baseline,
//               textBaseline: TextBaseline.alphabetic,
//               children: [
//                 Text(
//                   height.toInt().toString(),
//                   style: const TextStyle(
//                     color: Colors.white,
//                     fontSize: 40,
//                     fontWeight: FontWeight.bold,
//                   ),
//                 ),
//                 const SizedBox(width: 5),
//                 const Text(
//                   "cm",
//                   style: TextStyle(
//                     color: Colors.grey,
//                     fontSize: 18,
//                   ),
//                 ),
//               ],
//             ),

//             Slider(
//               value: height,
//               min: 120,
//               max: 220,
//               activeColor: Colors.pink,
//               inactiveColor: Colors.grey,
//               onChanged: onChanged,
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }