import 'package:flutter/material.dart';
import 'page3.dart';

class Page2 extends StatelessWidget {
  const Page2({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Page 2"),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          children: [
            const SizedBox(height: 25.0,),
            ElevatedButton(
                onPressed: (){
                  Navigator.of(context).pop();
                },
                child: Icon(Icons.navigate_before, size:50.0)),
            const SizedBox(height: 25.0,),
            ElevatedButton(
                onPressed: (){
                  Navigator.of(context).push(
                      MaterialPageRoute(builder: (context)=>const Page3())
                  );
                },
                child: const Icon(Icons.navigate_next, size: 50,))

          ],
        ),
      ),
    );
  }
}
