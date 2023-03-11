

import 'package:flutter/material.dart';
import 'package:vialika_admin/drawer.dart';

class NewsView extends StatefulWidget{
  _NewsViewState createState() => _NewsViewState();
}

class _NewsViewState extends State<NewsView>{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar( 
        title: const Text("Anuncios"),
      ),
      drawer: myDrawer(context),
      body: Column(
        children: [
          const ListTile(
            leading: Icon(Icons.notifications),
            title: Text("Tome en cuenta lo siguiente para iniciar su día:"),
          ),
          Container(
            width: double.infinity,
            height: 300,
            margin: const EdgeInsets.all(20),
            decoration: const BoxDecoration(
              borderRadius: BorderRadius.all(Radius.circular(12)),
              image: DecorationImage(
                image: NetworkImage("https://firebasestorage.googleapis.com/v0/b/vialika.appspot.com/o/assets%2FScreenshot%20from%202020-10-22%2006-30-44.png?alt=media&token=3c22c391-6406-49e5-a746-b4844d054edf"))
            ),
          ),
        ],
      )
    );
  }
}