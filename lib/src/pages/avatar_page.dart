import 'package:flutter/material.dart';

class AvatarPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Avatar page'),
        actions: <Widget>[ 
          Container(
            padding: EdgeInsets.all(5.0),
            child: CircleAvatar( 
              backgroundImage: NetworkImage('https://i0.pngocean.com/files/171/434/384/clark-kent-superman-man-of-steel-batman-comic-book-henry-cavill-superman.jpg'),
              radius: 25.0,
            ),
          ),
          Container(
            margin: EdgeInsets.only(right: 10.0),
            child: CircleAvatar( 
              child: Text('CG'),
              backgroundColor: Colors.red,
            ),
          ),
          
        ],
      ),
      body: Center(
        child: FadeInImage( 
          image: NetworkImage('https://i0.pngocean.com/files/171/434/384/clark-kent-superman-man-of-steel-batman-comic-book-henry-cavill-superman.jpg'),
          placeholder: AssetImage('assets/jar-loading.gif'),
          fadeInDuration: Duration(milliseconds: 100),
        ),
      ),
    );
  }
}