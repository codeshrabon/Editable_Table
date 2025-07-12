import 'package:flutter/material.dart';
import 'BuildBody.dart';

void main(){
  runApp(const MaterialApp(title: 'Materail App',home: MaterialComponent()));
}

class MaterialComponent  extends StatelessWidget{
  const MaterialComponent({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:AppBar(
        title: Center(child: const Text('AppBar')),
        
      ),
      body: BuildBody()
          
    );
  }
}