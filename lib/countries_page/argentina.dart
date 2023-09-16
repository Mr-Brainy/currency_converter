import 'package:flutter/material.dart';

class ArgentinaCoverterPage extends StatefulWidget {
  const ArgentinaCoverterPage({super.key});

  @override
  State<ArgentinaCoverterPage> createState() => _ArgentinaCoverterPageState();
}

class _ArgentinaCoverterPageState extends State<ArgentinaCoverterPage> {
  TextEditingController textController = TextEditingController();
  double result = 0;

  void convert() {
    setState(() {
      result = double.parse(textController.text) * 349.35;
      textController.clear();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF0d324d),
      appBar: AppBar(
        backgroundColor: const Color(0xFF0d324d),
        title: Row(
          mainAxisAlignment:MainAxisAlignment.center,
          children: [
            Image.asset(
              'assets/usaf.png',
              height: 30.0,
              width: 30.0,
            ),
            const SizedBox(width: 5.0),
            const Text('USD =>  Arg'),
            const SizedBox(width: 5.0),
            Image.asset(
              'assets/argentinaf.png',
              height: 30.0,
              width: 30.0,
              fit: BoxFit.fitWidth,
            ),
          ],
        ),
        centerTitle: true,
        elevation: 0.0,
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(15.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text(
                ' Arg',
                style: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
              Text(
                result == 0
                    ? result.toStringAsFixed(0)
                    : result.toStringAsFixed(2),
                style: const TextStyle(
                  fontSize: 50.0,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
              const SizedBox(height: 7.0),
              TextField(
                controller: textController,
                style: const TextStyle(color: Colors.black),
                decoration: InputDecoration(
                  hintText: 'Enter amount in USD',
                  hintStyle: const TextStyle(color: Colors.black),
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
                    ),
                    borderRadius: BorderRadius.circular(15.0),
                  ),
                  prefixIcon: const Icon(
                    Icons.monetization_on_outlined,
                    color: Colors.black,
                  ),
                  filled: true,
                  fillColor: Colors.white60,
                  contentPadding: const EdgeInsets.all(1.0),
                ),
                keyboardType: const TextInputType.numberWithOptions(
                  decimal: true,
                ),
              ),
              const SizedBox(height: 18.0),
              TextButton(
                onPressed: convert,
                style: TextButton.styleFrom(
                  backgroundColor: Colors.black,
                  foregroundColor: Colors.white,
                  fixedSize: const Size(
                    400.0,
                    47.0,
                  ),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15.0),
                  ),
                ),
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
