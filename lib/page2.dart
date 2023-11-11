import 'package:flutter/material.dart';
import 'employee.dart';

class Page2 extends StatelessWidget {
  const Page2({super.key});

  @override
  Widget build(BuildContext context) {
    final Employee employee = ModalRoute.of(context)!.settings.arguments as Employee;

    return Scaffold(
      appBar: AppBar(
        title: const Text("Page 2"),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          children: [
            const SizedBox(height: 25.0,),
            Text(employee.toString(),
            style: TextStyle(fontSize: 30.0, fontWeight: FontWeight.bold, color: Colors.lightGreen),),
            const SizedBox(height: 20.0,),
            ElevatedButton(
                onPressed: (){
                  Navigator.of(context).pop();
                },
                child: Icon(Icons.navigate_before, size:50.0))
          ],
        ),
      ),
    );
  }
}
