// import 'package:flutter/material.dart';

// class CustomButton extends StatefulWidget {
//   const CustomButton({super.key, required this.text});
//   final String text;

//   @override
//   State<CustomButton> createState() => _CustomButtonState();
// }

// class _CustomButtonState extends State<CustomButton> {
//   TextEditingController textController = TextEditingController();
//   double result = 0;
//   @override
//   Widget build(BuildContext context) {
//     return TextButton(
//       onPressed: () {
//         setState(
//           () {
//             result = double.parse(textController.text) * 945;
//           },
//         );
//       },
//       style: TextButton.styleFrom(
//           elevation: 0.0,
//           backgroundColor: Colors.black,
//           fixedSize: const Size(
//             400.0,
//             47.0,
//           ),
//           shape: RoundedRectangleBorder(
//             borderRadius: BorderRadius.circular(15.0),
//           ),
//           foregroundColor: Colors.white),
//       child: const Text(
//         'Convert',
//         style: TextStyle(
//           fontSize: 18.0,
//         ),
//       ),
//     );
//   }
// }
