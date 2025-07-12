import 'package:flutter/material.dart';

class MyAppBar extends StatelessWidget{
  final Widget title;
  const MyAppBar({required this.title, super.key});

  //

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(

      height: 56, // logical pixel
      padding: const  EdgeInsets.symmetric(horizontal: 8.0),
      decoration: BoxDecoration(color: Colors.blueAccent),
      alignment: Alignment.centerLeft,
      child: title,

    );
  }
}

class MyScaffold extends StatelessWidget{
  const MyScaffold({super.key});

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Material(

      child: Column(
        children: [
          MyAppBar(title: Text('Editable Table',
          style: Theme.of(context).primaryTextTheme.titleLarge,
          )),
          const Expanded(child: Center(child: Text('Faysal Ahmed'),))

        ],
      ),
    );
  }
}

void main(){
  runApp(
      const MaterialApp(
        //title: 'Editable Table',
        home: SafeArea(child: MyScaffold()),
      ));
}