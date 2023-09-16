import 'package:flutter/material.dart';

class RussiaConverterPage extends StatefulWidget {
  const RussiaConverterPage({super.key});

  @override
  State<RussiaConverterPage> createState() => _RussiaConverterPageState();
}

class _RussiaConverterPageState extends State<RussiaConverterPage> {
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
            const Text('USD => ₽'),
            const SizedBox(width: 5.0),
            Image.asset(
              'assets/russiaf.png',
              width: 30.0,
              height: 30.0,
            ),
          ],
        ),
        centerTitle: true,
        elevation: 0.0,
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(12.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text(
                '₽',
                style: TextStyle(
                  fontSize: 35.0,
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Text(
                ' ${result == 0 ? result.toStringAsFixed(0) : result.toStringAsFixed(2)}',
                style: const TextStyle(
                  fontSize: 50.0,
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 20.0),
              TextField(
                controller: textController,
                style: const TextStyle(
                  color: Colors.black,
                ),
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
                keyboardType: const TextInputType.numberWithOptions(
                  decimal: true,
                ),
              ),
              const SizedBox(height: 20.0),
              TextButton(
                onPressed: () {
                  setState(
                    () {
                      result = double.parse(textController.text) * 80.5491;
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
