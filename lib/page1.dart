import 'package:flutter/gestures.dart';
import "package:flutter/material.dart";
import 'page2.dart';
import 'employee.dart';

class Page1 extends StatefulWidget {
  const Page1({super.key});

  @override
  State<Page1> createState() => _Page1State();
}

class _Page1State extends State<Page1> {
  final TextEditingController _controllerHours = TextEditingController();
  final TextEditingController _controllerRate = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Page 1"),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          children: [
            const SizedBox(
              height: 25.0,
            ),
            SizedBox(
                height: 50,
                width: 200,
                child: TextField(
                  controller: _controllerHours,
                  keyboardType: TextInputType.number,
                  decoration: const InputDecoration(
                      border: OutlineInputBorder(), hintText: 'Enter hours'),
                )),
            const SizedBox(
              height: 10.0,
            ),
            SizedBox(
                height: 50,
                width: 200,
                child: TextField(
                  controller: _controllerRate,
                  keyboardType: TextInputType.number,
                  decoration: const InputDecoration(
                      border: OutlineInputBorder(), hintText: 'Enter rate'),
                )),
            const SizedBox(height: 10.0),
            ElevatedButton(
                onPressed: openPage2,
                child: const Icon(
                  Icons.navigate_next,
                  size: 50,
                ))
          ],
        ),
      ),
    );
  }

  @override
  void dispose() {
    _controllerRate.dispose();
    _controllerHours.dispose();
    super.dispose();
  }

  void openPage2() {
    try {
      int hours = int.parse(_controllerHours.text);
      double rate = double.parse(_controllerRate.text);
      Navigator.of(context).push(
          MaterialPageRoute(
              builder: (context) => const Page2(),
              settings: RouteSettings(arguments: Employee(hours, rate))
          )
      );
    }
    catch(e){print('$e');}
  }
}
