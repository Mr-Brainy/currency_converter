import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class NigeriaConverterPage extends StatefulWidget {
  const NigeriaConverterPage({super.key});

  @override
  State<NigeriaConverterPage> createState() => _NigeriaConverterPageState();
}

class _NigeriaConverterPageState extends State<NigeriaConverterPage> {
  TextEditingController textController = TextEditingController();
  double result = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF0d324d),
      appBar: AppBar(
        backgroundColor: const Color(0xFF0d324d),
        title: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              'assets/usaf.png',
              width: 30.0,
              height: 30.0,
            ),
            const SizedBox(width: 5.0),
            const Text('USD => NGN'),
            const SizedBox(width: 5.0),
            Image.asset(
              'assets/nigeriaf.png',
              width: 30.0,
              height: 30.0,
            ),
          ],
        ),
        elevation: 0.0,
        centerTitle: true,
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(12.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text(
                '₦',
                style: TextStyle(
                  fontSize: 30.0,
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Text(
                result == 0
                    ? result.toStringAsFixed(0)
                    : result.toStringAsFixed(1),
                style: const TextStyle(
                  fontSize: 50.0,
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 10.0),
              TextField(
                style: GoogleFonts.arvo(
                  textStyle: const TextStyle(
                    fontSize: 17.0,
                    color: Colors.black,
                  ),
                ),
                controller: textController,
                decoration: InputDecoration(
                  contentPadding: const EdgeInsets.all(1.0),
                  enabledBorder: OutlineInputBorder(
                    borderSide: const BorderSide(
                      width: 2.0,
                      color: Colors.black,
                    ),
                    borderRadius: BorderRadius.circular(15.0),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderSide: const BorderSide(
                      width: 2.0,
                      color: Colors.black,
                    ),
                    borderRadius: BorderRadius.circular(15.0),
                  ),
                  filled: true,
                  fillColor: Colors.white60,
                  prefixIcon: const Icon(
                    Icons.monetization_on_outlined,
                    color: Colors.black,
                  ),
                  hintText: 'Enter amount in USD',
                  hintStyle: const TextStyle(
                    color: Colors.black,
                  ),
                ),
                keyboardType: TextInputType.number,
              ),
              const SizedBox(height: 18.0),
              TextButton(
                onPressed: () {
                  setState(
                    () {
                      result = double.parse(textController.text) * 945;
                      textController.clear();
                    },
                  );
                },
                style: TextButton.styleFrom(
                    elevation: 0.0,
                    backgroundColor: Colors.black,
                    fixedSize: const Size(
                      400.0,
                      47.0,
                    ),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15.0),
                    ),
                    foregroundColor: Colors.white),
                child: const Text(
                  'Convert',
                  style: TextStyle(
                    fontSize: 18.0,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
