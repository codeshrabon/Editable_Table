import 'edit_able_table.dart';
import 'package:flutter/material.dart';
void main(){
  runApp(
    const MaterialApp(title: "Home page", home: TutorialHome()));
}

class TutorialHome extends StatelessWidget {
  const TutorialHome ({super.key});

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    //throw UnimplementedError();
    //Scaffold is a layer for the major Material Components
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(onPressed: (){},
            //() => key.runtimeType,
          icon: Icon(Icons.menu),
          tooltip: 'Navigation menu',
        ),
        title: const Text('Editable Table'),

        actions: [
          IconButton(
            onPressed:() {},
            icon:Icon(Icons.search),
            tooltip:'Search',),

        ],
      ),
      body: const Padding(padding: EdgeInsets.all(16.0),
      child: EditableTable(),
      ),


      floatingActionButton: FloatingActionButton(tooltip: 'Add',
      onPressed: () {} ,
      child: Icon(Icons.add),)
    );
  }
}