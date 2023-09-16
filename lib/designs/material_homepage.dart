import 'package:currency_converter/countries_page/argentina.dart';
import 'package:currency_converter/countries_page/brazil.dart';
import 'package:currency_converter/countries_page/cameroon.dart';
import 'package:currency_converter/countries_page/ghana.dart';
import 'package:currency_converter/countries_page/india.dart';
import 'package:currency_converter/countries_page/nigeria.dart';
import 'package:currency_converter/countries_page/russia.dart';
import 'package:flutter/material.dart';

// class MaterialHomePage extends StatefulWidget {
//   const MaterialHomePage({super.key});

//   @override
//   State<MaterialHomePage> createState() => _MaterialHomePageState();
// }

// class _MaterialHomePageState extends State<MaterialHomePage> {
//   final border = OutlineInputBorder(
//     borderSide: const BorderSide(
//       width: 2.0,
//       style: BorderStyle.solid,
//     ),
//     borderRadius: BorderRadius.circular(15.0),
//   );

//   double result = 0;

//   final TextEditingController textController = TextEditingController();
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
// backgroundColor: Colors.blueGrey,
//       appBar: AppBar(
//         backgroundColor: Colors.blueGrey,
//         title: const Text('Currency Converter'),
//         centerTitle: true,
//         elevation: 0.0,
//         actions: const [Icon(Icons.airline_seat_recline_normal_outlined)],
//       ),
//       body: Center(
//         // The mutable counter
//         child: Padding(
//           padding: const EdgeInsets.all(8.0),
//           child: Column(
//             mainAxisAlignment: MainAxisAlignment.center,
//             children: [
//               const Text(
//                 '₦',
//                 style: TextStyle(
//                   fontSize: 55.0,
//                   fontWeight: FontWeight.bold,
//                   color: Color.fromARGB(255, 255, 255, 255),
//                 ),
//               ),
//               Text(
//                 ' ${result == 0 ? result.toStringAsFixed(0) : result.toStringAsFixed(2)}',
//                 style: const TextStyle(
//                   fontSize: 55.0,
//                   fontWeight: FontWeight.bold,
//                   color: Color.fromARGB(255, 255, 255, 255),
//                 ),
//               ),
//               // The Textfield.
//               TextField(
//                 controller: textController,
//                 style: const TextStyle(
//                   color: Colors.black,
//                 ),
//                 decoration: InputDecoration(
//                   contentPadding: const EdgeInsets.all(8.0),
//                   prefixIcon: const Icon(Icons.monetization_on_outlined),
//                   prefixIconColor: Colors.black,
//                   hintText: 'Please enter the amount in USD',
//                   hintStyle: const TextStyle(color: Colors.black),
//                   filled: true,
//                   fillColor: Colors.white,
//                   enabledBorder: border,
//                   focusedBorder: border,
//                 ),
//                 keyboardType: const TextInputType.numberWithOptions(
//                   decimal: true,
//                 ),
//               ),
//               const SizedBox(height: 18.0),
//               // Add Button.
//               TextButton(
//                 onPressed: () {
//                   setState(() {
//                     result = double.parse(textController.text) * 945;
//                   });
//                 },
//                 style: TextButton.styleFrom(
//                   backgroundColor: Colors.black,
//                   foregroundColor: Colors.white,
//                   fixedSize: const Size(400.0, 45.0),
//                   shape: RoundedRectangleBorder(
//                     borderRadius: BorderRadius.circular(15.0),
//                   ),
//                 ),
//                 child: const Text(
//                   "Convert",
//                   style: TextStyle(
//                     fontSize: 18,
//                   ),
//                 ),
//               ),
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }

class HostPage extends StatelessWidget {
  const HostPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF0d324d),
      appBar: AppBar(
        backgroundColor: const Color(0xFF0d324d),
        title: const Text('Currency Converter'),
        elevation: 0.0,
        centerTitle: true,
        actions: [
          GestureDetector(
            onTap: () {
              ScaffoldMessenger.of(context).showSnackBar(
                SnackBar(
                  content: Text(
                    'Hey check the latest currency rate ❤',
                    style: TextStyle(
                      fontSize: 15,
                      fontStyle: FontStyle.italic,
                    ),
                  ),
                  behavior: SnackBarBehavior.floating,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15.0),
                  ),
                ),
              );
            },
            child: Text(
              '🖐',
              style: TextStyle(
                fontSize: 20.0,
              ),
            ),
          ),
        ],
      ),
      body: Center(
        child: Container(
          decoration: BoxDecoration(
            color: const Color(0xFF1a1a1a),
            borderRadius: BorderRadius.circular(23.0),
          ),
          height: 500.0,
          width: 320.0,
          child: Card(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(23.0),
            ),
            color: const Color(0xFF07607e),
            elevation: 8.0,
            child: Center(
              child: SingleChildScrollView(
                child: Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      GestureDetector(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) {
                                return const NigeriaConverterPage();
                              },
                            ),
                          );
                        },
                        child: Container(
                          decoration: BoxDecoration(
                            color: Colors.white54,
                            borderRadius: BorderRadius.circular(15.0),
                          ),
                          height: 50.0,
                          width: 300.0,
                          child: Row(
                            children: [
                              Image.asset('assets/nigeriaf.png'),
                              const Text('Nigeria'),
                            ],
                          ),
                        ),
                      ),
                      const SizedBox(height: 6.0),
                      GestureDetector(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) {
                                return const ArgentinaCoverterPage();
                              },
                            ),
                          );
                        },
                        child: Container(
                          decoration: BoxDecoration(
                            color: Colors.white54,
                            borderRadius: BorderRadius.circular(15.0),
                          ),
                          height: 50.0,
                          width: 300.0,
                          child: Row(
                            children: [
                              Image.asset('assets/argentinaf.png'),
                              const Text('Argentina'),
                            ],
                          ),
                        ),
                      ),
                      const SizedBox(height: 6.0),
                      GestureDetector(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) {
                                return const GhanaConverterPage();
                              },
                            ),
                          );
                        },
                        child: Container(
                          decoration: BoxDecoration(
                            color: Colors.white54,
                            borderRadius: BorderRadius.circular(15.0),
                          ),
                          height: 50.0,
                          width: 300.0,
                          child: Row(
                            children: [
                              Image.asset('assets/ghanaf.png'),
                              const SizedBox(width: 3),
                              const Text('Ghana'),
                            ],
                          ),
                        ),
                      ),
                      const SizedBox(height: 6.0),
                      GestureDetector(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) {
                                return const IndiaConverterPage();
                              },
                            ),
                          );
                        },
                        child: Container(
                          decoration: BoxDecoration(
                            color: Colors.white54,
                            borderRadius: BorderRadius.circular(15.0),
                          ),
                          height: 50.0,
                          width: 300.0,
                          child: Row(
                            children: [
                              Image.asset('assets/indiaf.png'),
                              const SizedBox(width: 3),
                              const Text('India'),
                            ],
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 6.0,
                      ),
                      GestureDetector(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) {
                                return const RussiaConverterPage();
                              },
                            ),
                          );
                        },
                        child: Container(
                          decoration: BoxDecoration(
                            color: Colors.white54,
                            borderRadius: BorderRadius.circular(15.0),
                          ),
                          height: 50.0,
                          width: 300.0,
                          child: Row(
                            children: [
                              Image.asset('assets/russiaf.png'),
                              const SizedBox(width: 3),
                              const Text('Russia'),
                            ],
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 6.0,
                      ),
                      GestureDetector(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) {
                                return const CameroonConverterPage();
                              },
                            ),
                          );
                        },
                        child: Container(
                          decoration: BoxDecoration(
                            color: Colors.white54,
                            borderRadius: BorderRadius.circular(15.0),
                          ),
                          height: 50.0,
                          width: 300.0,
                          child: Row(
                            children: [
                              Image.asset('assets/cameroonf.png'),
                              const SizedBox(width: 3),
                              const Text('Cameroon'),
                            ],
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 6.0,
                      ),
                      GestureDetector(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) {
                                return const BrazilConvertPage();
                              },
                            ),
                          );
                        },
                        child: Container(
                          decoration: BoxDecoration(
                            color: Colors.white54,
                            borderRadius: BorderRadius.circular(15.0),
                          ),
                          height: 53.0,
                          width: 300.0,
                          child: Row(
                            children: [
                              Image.asset('assets/brazilf.png'),
                              const SizedBox(width: 3),
                              const Text('Brazil'),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
