import 'package:flutter/material.dart';
import 'package:flutter/foundation.dart';

void main() {
  runApp(MyRipple());
}

class MyRipple extends StatelessWidget{
  const MyRipple ({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    const title = 'MyRippleEffect';
    return MaterialApp(
      title: title,
      home: MyHomePage(title: title),
    );
  }
}

class MyHomePage extends StatelessWidget{
  final String title;
  const MyHomePage({Key? key, required this.title}) : super(key:key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
      ),
      body: const Center(
        child: MyButton(),
      ),
    );
  }
}

class MyButton extends StatelessWidget{
  const MyButton ({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context){
    return InkWell(
      onTap: (){
        ScaffoldMessenger.of(context).showSnackBar(const SnackBar(content: Text('Button tapped'),
        ));
      },
      child: const Padding(padding: EdgeInsets.all(25.0),
      child: Text('Click Me'),),
    );
  }
}