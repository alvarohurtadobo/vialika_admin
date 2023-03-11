

import 'package:flutter/material.dart';
import 'package:vialika_admin/drawer.dart';
import 'package:vialika_admin/vialika/model/infringement.dart';

class HistoryView extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    List<Widget> myInfringementWidgets = myInfringements.map((infringement){
      return infringementTile(context, infringement);
    }).toList();
    print("Building ${myInfringementWidgets.length} infringements");
    return Scaffold(
      appBar: AppBar(
        title: const Text("Historial"),
      ),
      drawer: myDrawer(context),
      body: Container( 
        child: ListView(
          // reverse: true,
          children: myInfringementWidgets
        ),
      ),
    );
  }
}

Widget infringementTile(BuildContext context, Infringement infringement){
  return GestureDetector(
    onTap: (){
      Navigator.of(context).pushNamed("/infringement", arguments: infringement);
    },
    child: Column(
      children: [
        ListTile(
          contentPadding: const EdgeInsets.symmetric(horizontal: 20, vertical: 5),
          leading: Icon(Icons.warning),
          title: Text(infringement.type),
          subtitle: Text("${infringement.datetime!.toIso8601String().substring(0,10)} ${infringement.datetime!.toIso8601String().substring(11,16)}"),
          trailing: const Icon(Icons.traffic),
        ),
        const Divider(
          height: 10,
        )
      ],
    ),
  );
}