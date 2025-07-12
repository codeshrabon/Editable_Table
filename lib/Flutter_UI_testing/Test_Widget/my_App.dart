import 'package:flutter/material.dart';
import 'BodyCompound.dart';
// class AppBar extends StatelessWidget{
//   const AppBar({super.key});
//   @override
//   Widget build(BuildContext context) {
//     return Container(
//
//     );
//   }
//
// }

void main(){
  runApp(
    const MaterialApp(
      title: 'Testing App',

      home: SafeArea(child: MyScaffold()),
    )
  );
}

class MyScaffold extends StatelessWidget{
  const MyScaffold({super.key});

  @override
  Widget build(BuildContext context){
    return MaterialApp(
      home: Column(
        children: [
          Container(
            child: Scaffold(
              appBar: AppBar(title: Text('App Bar'),
              backgroundColor: Colors.blue,


              ),
              body: EditableTableCompund(),
              backgroundColor: (Colors.amber),
            ),

          ),
        ],
      ),



    );

  }
}