import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CupertinoHomePage extends StatefulWidget {
  const CupertinoHomePage({super.key});

  @override
  State<CupertinoHomePage> createState() => _CupertinoHomePageState();
}

class _CupertinoHomePageState extends State<CupertinoHomePage> {
  final TextEditingController textController = TextEditingController();
  double result = 0;
  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      backgroundColor: CupertinoColors.systemGrey3,
      navigationBar: const CupertinoNavigationBar(
        middle: Text('Currency Converter'),
      ),
      child: Center(
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            children: [
              const Center(
                child: Text(
                  '₦',
                  style: TextStyle(
                    fontSize: 55.0,
                    fontWeight: FontWeight.bold,
                    color: Color.fromARGB(255, 255, 255, 255),
                  ),
                ),
              ),
              Text(
                ' ${result == 0 ? result.toStringAsFixed(0) : result.toStringAsFixed(2)}',
                style: const TextStyle(
                  fontSize: 55.0,
                  fontWeight: FontWeight.bold,
                  color: Color.fromARGB(255, 255, 255, 255),
                ),
              ),
              CupertinoTextField(
                controller: textController,
                style: const TextStyle(
                  color: Colors.black,
                ),
                decoration: BoxDecoration(
                  color: CupertinoColors.white,
                  border: Border.all(color: Colors.black, width: 2.0),
                ),
                prefix: const Icon(CupertinoIcons.money_dollar),
                placeholder: 'Please enter the amount in USD',
                keyboardType: const TextInputType.numberWithOptions(
                  decimal: true,
                ),
              ),
              const SizedBox(height: 10.0),
              CupertinoButton(
                onPressed: () {
                  setState(() {
                    result = double.parse(textController.text) * 945;
                  });
                },
                borderRadius: BorderRadius.circular(10.0),
                child: const Text(
                  'Convert',
                  style: TextStyle(fontSize: 18.0),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
