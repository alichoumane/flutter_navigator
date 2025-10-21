import "package:flutter/material.dart";
import 'page2.dart';

class Page1 extends StatefulWidget {
  const Page1({super.key});

  @override
  State<Page1> createState() => _Page1State();
}

class _Page1State extends State<Page1> {

  @override
  void initState() {
    print("In initState");
    super.initState();
  }

  @override
  void dispose() {
    print("In dispose");
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Page 1"),
         backgroundColor: Colors.blue,
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