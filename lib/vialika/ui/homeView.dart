

import 'package:flutter/material.dart';
import 'package:vialika_admin/vialika/model/infringement.dart';

List<String> labels = ["Infracción", "Historial", "Conductor", "Mis vehículos", "Aclaraciones", "Avisos", "Cerrar Sesión"];
List<String> routes = ["/infringement", "/history", "/driver", "/vehicles", "/inquiries", "/news", "/"];
List<String> images = ["carIcon.png", "historyIcon.png", "driverIcon.png", "vehiclesIcon.png", "messagesIcon.png", "avisosIcon.png", "logoutIcon.png"];

class HomeView extends StatelessWidget{
  
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    double cardWidth = (width-80)/2;
    return Scaffold(
      // appBar: AppBar(
      //   title: Text("Inicio")
      // ),
      body: SizedBox(
        height: height,
        width: width,
        child: SingleChildScrollView(
          child: Column(
                children: [
                  const SizedBox(
                    height: 70,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Container(
                        width: 80,
                        height: 80,
                        decoration: const BoxDecoration(
                          image: DecorationImage(image: AssetImage("assets/iconWhite.png"))
                        ),
                      ),
                      const Text("Vialika", style: TextStyle(fontSize: 48, color: Colors.purple, fontWeight: FontWeight.bold),),
                    ],
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Wrap(
                    alignment: WrapAlignment.spaceAround,
                    children: <Widget>[
                      homeElement(context, 0, cardWidth),
                      homeElement(context, 1, cardWidth),
                      homeElement(context, 2, cardWidth),
                      homeElement(context, 3, cardWidth),
                      homeElement(context, 4, cardWidth),
                      homeElement(context, 5, cardWidth),
                      homeElement(context, 6, cardWidth),
                    ]
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  const Divider(
                    height: 10,
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  const Text("Vialika v 0.8.0"),
                  const SizedBox(
                    height: 10,
                  ),
                ],
              ),
        ),
      )
    );
  }
}

Widget homeElement(BuildContext context, int index, double width){
  return GestureDetector(
    onTap: (){
      Navigator.of(context).pushNamed(routes[index], arguments: myInfringements[0]);
    },
    child: Container(
      height: width/1.5,
      width: width,
      margin: const EdgeInsets.all(10),
      padding: const EdgeInsets.all(10),
      decoration: BoxDecoration(
        borderRadius: const BorderRadius.all(Radius.circular(12)),
        color: Colors.blue[300]
      ),
      child: Column(
        children: [
          Container(
            width: width/3,
            height: width/3,
            decoration: BoxDecoration(
              image: DecorationImage(image: AssetImage("assets/${images[index]}"))
            ),
          ),
          Text(labels[index], style: const TextStyle(fontSize: 22, color: Colors.white),),
        ],
      )
    ),
  );
}