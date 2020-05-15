import 'package:flutter/material.dart';

class InputsPage extends StatefulWidget {
  @override
  _InputsPageState createState() => _InputsPageState();
}

class _InputsPageState extends State<InputsPage> {
  String _nombre = '';
  String _email  = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar( 
        title: Text('INPUTS'),
      ),
      body: ListView(
        padding: EdgeInsets.symmetric(horizontal:10.0, vertical:20.0), 
        children: <Widget>[
          _crearInput(),
          Divider(),
          _crearEmail(),
          Divider(),
          _crearPassword(),
          _crearPersona()
          ],
        ),
        
      );
    }
          
    Widget _crearInput() {
      return TextField( 
        autofocus: true,
        textCapitalization: TextCapitalization.sentences,
        decoration: InputDecoration( 
          border: OutlineInputBorder(borderRadius: BorderRadius.circular(20.0)),
          counter:Text('Letras ${_nombre.length}'),
          hintText: 'Nombre de la persona',
          labelText: 'Nombre',
          helperText: 'Solo es el nombre',
          suffixIcon: Icon(Icons.accessibility),
          icon: Icon(Icons.android),
        ),
        onChanged: (valor){
          
          setState(() {
            _nombre = valor;
          });
          print(_nombre);
        },
      );
    }

    Widget _crearEmail() {
      return TextField( 
        keyboardType: TextInputType.emailAddress,
        textCapitalization: TextCapitalization.sentences,
        decoration: InputDecoration( 
          border: OutlineInputBorder(borderRadius: BorderRadius.circular(20.0)),
          hintText: 'Email',
          labelText: 'Email',
          suffixIcon: Icon(Icons.alternate_email),
          icon: Icon(Icons.email),
        ),
        onChanged: (valor){
          
          setState(() {
            _email = valor;
          });
          print(_email);
        },
      );
    }

    Widget _crearPassword(){
       return TextField( 
         obscureText: true,
        textCapitalization: TextCapitalization.sentences,
        decoration: InputDecoration( 
          border: OutlineInputBorder(borderRadius: BorderRadius.circular(20.0)),
          hintText: 'Password',
          labelText: 'Password',
          suffixIcon: Icon(Icons.lock_open),
          icon: Icon(Icons.lock),
        ),
        onChanged: (valor){
          
          setState(() {
            _email = valor;
          });
          print(_email);
        },
      );
    }

  Widget _crearPersona(){
    return ListTile( 
      title: Text('Nombre: $_nombre'),
      subtitle: Text(' Email $_email'),
    );
  }
}