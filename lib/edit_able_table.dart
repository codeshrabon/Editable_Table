import 'package:flutter/material.dart';

class EditableTable extends StatefulWidget{
  const EditableTable({super.key});

    // TODO: implement createState
  @override
  State<EditableTable> createState() => _EditableTableState ();

}

class _EditableTableState extends State<EditableTable> {
  List<List<TextEditingController>> _controllers = [];
  
  int rowCount = 2;
  int columnCount = 2;

  @override
  void initState(){
    super.initState();
    _initializeTable();
  }
  void _initializeTable(){
    _controllers = List.generate(rowCount, (row) => List.generate(columnCount, (_) => TextEditingController(),));
  }

  //adding ROW
  void _addRow(){
    setState(() {
      _controllers.add(List.generate(columnCount, (_)=> TextEditingController()));
      rowCount++;
    });
  }
  //aDDING cOLUMN
  void _addColumn(){
    setState(() {
      for(var row in _controllers){
        row.add(TextEditingController());
      }
      columnCount++;
    });
  }




  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Table(
          border: TableBorder.all(),
          children: _controllers.map((row){
            return TableRow(
              children: row.map((controller){
                return Padding(padding: const EdgeInsets.all(7.0),
                  child: TextField(
                    controller: controller,
                    decoration: const InputDecoration(border: InputBorder.none),
                  ),

                );

              }).toList(),
            );
          }).toList(),


        ),
        const SizedBox(height: 15,),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(onPressed: _addRow, child: const Text("Add Row")),
            const SizedBox(width: 10,),
            ElevatedButton(onPressed: _addColumn, child: const Text("Add Column")),
          ],
        )
      ],
    );
  }


  @override
  void dispose(){
    for(var row in _controllers){
      for(var controller in row){
        controller.dispose();
      }
    }
    super.dispose();
  }
  
}



