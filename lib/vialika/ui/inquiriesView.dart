

import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:vialika_admin/drawer.dart';


List<String> contactWays = ["Normativa vigente","Teléfono","Chatbot"];
List<String> contactInfo = ["Portal Web de tránsito Bolivia","Llamada telefónica o Whatsapp","Escribanos por messenger"];
List<String> contactURL = ["https://registronacional.com/bolivia/transito.htm","+59167196232","Vialika on Messenger"];
List<String> contactLink = ["https://registronacional.com/bolivia/transito.htm","tel:+59167196232","http://m.me/"];


class InquiriesView extends StatefulWidget{
  _InquiriesViewState createState() => _InquiriesViewState();
}

class _InquiriesViewState extends State<InquiriesView>{
  @override
  Widget build(BuildContext context) {
    return Scaffold( 
      appBar: AppBar(
        title: const Text("Medios de reclamo"),
      ),
      drawer: myDrawer(context),
      body: Container(
        padding: const EdgeInsets.all(30),
        child: ListView.separated(
          padding: const EdgeInsets.symmetric(vertical: 5),
          scrollDirection: Axis.vertical,
          shrinkWrap: true,
          primary: false,
          itemCount: 3,
          separatorBuilder: (context, index) {
            return const SizedBox(height: 15);
          },
          itemBuilder: (context, index) {
            return contactBox(context, index);
          },
        ),
      ),
    );
  }
}

Widget contactBox(BuildContext context, int index){
  return GestureDetector(
    onTap: (){
      //print("Launching ${contactLink[index]}");
      _launchURL(contactLink[index]);
    },
    child: DecoratedBox(
      decoration: BoxDecoration(boxShadow: [
        BoxShadow(
          color: Theme.of(context).focusColor.withOpacity(0.15),
          offset: const Offset(0, 5),
          blurRadius: 15,
        )
      ]),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Container(
            width: double.infinity,
            padding: const EdgeInsets.all(10),
            decoration: BoxDecoration(
                color: Theme.of(context).focusColor,
                borderRadius: const BorderRadius.only(topLeft: Radius.circular(5), topRight: Radius.circular(5))),
            child: Text(
              contactWays[index],
              style: TextStyle(color: Theme.of(context).primaryColor),
            ),
          ),
          Container(
            width: double.infinity,
            padding: const EdgeInsets.all(10),
            decoration: BoxDecoration(
                color: Theme.of(context).primaryColor,
                // borderRadius: BorderRadius.only(bottomRight: Radius.circular(5), bottomLeft: Radius.circular(5))
            ),
            child: Text(
              contactInfo[index],
              style: TextStyle(color: Colors.black),
            ),
          ),
          Container(
            width: double.infinity,
            padding: const EdgeInsets.all(10),
            decoration: BoxDecoration(
                color: Theme.of(context).primaryColor,
                borderRadius: const BorderRadius.only(bottomRight: Radius.circular(5), bottomLeft: Radius.circular(5))),
            child: Text(
              contactURL[index],
              style: TextStyle(color: Colors.blueGrey[900], decoration: TextDecoration.underline),
            ),
          ),
        ],
      )
    ),
  );
}

Future _launchURL(String link) async {
  print("Calling $link");
  if (await canLaunch(link)) {
    await launch(link, forceWebView: false);
  } else {
    throw 'Could not launch $link';
  }
}