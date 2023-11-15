import 'package:flutter/material.dart';

class Page3 extends StatelessWidget {
  const Page3({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Page 3"),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          children: [
            const SizedBox(height: 25.0,),
            ElevatedButton(
                onPressed: (){
                  Navigator.of(context).pop();
                  Navigator.of(context).pop();
                },
                child: Text("Back to Home", style: TextStyle(fontSize: 20),))
          ],
        ),
      ),
    );
  }
}
