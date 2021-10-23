import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main (){

  runApp(MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: GridView.extent(
          maxCrossAxisExtent: 100,
          crossAxisSpacing: 10.0,
          mainAxisSpacing: 20.0,
scrollDirection: Axis.horizontal,
          padding: EdgeInsets.all(10.0),
          children:List.generate(100, (index) {
            return Card(
              shape: BeveledRectangleBorder(
                borderRadius: BorderRadius.circular(10.0),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(Icons.add,
                  size: 40.0,
                  ),
                  Text("ABC $index",
                  style: TextStyle(
                    //fontSize: 50.0,
                  ),
                  ),
                ],
              ),
            );
          },
          ),
        ),
      ),
    );
  }
}
