import "package:flutter/material.dart";
import 'page2.dart';

class Page1 extends StatelessWidget {
  const Page1({super.key});

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
            const SizedBox(height: 25.0,),
            ElevatedButton(
                onPressed: (){
                  Navigator.of(context).push(
                    MaterialPageRoute(builder: (context)=>const Page2())
                  );
                },
                child: const Icon(Icons.navigate_next, size: 50,))
          ],
        ),
      ),
    );
  }
}
