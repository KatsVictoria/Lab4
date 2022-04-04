import 'package:flutter/material.dart';
import 'dart:math';

class MyBody extends StatefulWidget {
  const MyBody({Key? key}) : super(key: key);

  @override
  createState() => new MyBodyState();
}

class MyBodyState extends State<MyBody> {
  final List<String> _array = [];

  @override
  Widget build(BuildContext context) {
    return new ListView.builder(itemBuilder: (context, i){
      if(i.isOdd) return new Divider();
      final int index = i~/2;
      
      return new ListTile(title: new Text('2^$index=${pow(2, index)}'));
    });
  }
}

void main() {
  runApp(const MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
   Widget build(BuildContext context) {
     return MaterialApp(
       title: 'Список элементов',
       theme: ThemeData(
         primarySwatch: Colors.green,
       ),
       home:Scaffold(
          appBar: AppBar(
           title: const Text('Список элементов'),
         ),
         body: new Center (child: new MyBody(),)
       ),
     );
   }

}