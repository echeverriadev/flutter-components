import 'package:flutter/material.dart';

class HomePageTemp extends StatelessWidget {
  final opciones = ['UNO0','DOS','TRES','CUATRO','CINCO','UNO0','DOS','TRES','CUATRO','UNO0','DOS','TRES','CUATRO','CINCO','UNO0','DOS'];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Temporal"),
      ),
      body: ListView(
        children: _crearItemsCorta()
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: (){},
        child: Icon(Icons.add),
      ),
    );
  }



  // List<Widget> _crearItems(){
  //   List<Widget> lista = new List<Widget>();
  //   for (String opt in opciones) {
  //     final tempWidget = ListTile(
  //       title: Text(opt),
  //     );
  //     lista..add(tempWidget)
  //           ..add(Divider());
  //   }

  //   return lista;
  // }

  List<Widget> _crearItemsCorta(){
    return opciones.map( (item){
      return Column(
        children: <Widget>[
          ListTile(
            title: Text( item + '!'),
            subtitle: Text("subtitle text"),
            leading: Icon(Icons.accessible_forward),
            trailing: Icon(Icons.keyboard_arrow_right),
            onTap: (){},
          ),
          Divider(),
        ],
      );
    }).toList();

  }
}