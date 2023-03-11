

import 'package:flutter/material.dart';
import 'package:flutter_map/flutter_map.dart';
import 'package:latlong2/latlong.dart';
import 'package:vialika_admin/drawer.dart';
import 'package:vialika_admin/vialika/model/infringement.dart';

class InfringementView extends StatefulWidget{
  final Infringement displayInfringement;

  InfringementView({Key? key, required this.displayInfringement}): super(key: key);

  _InfringementViewState createState() => _InfringementViewState();
}

class _InfringementViewState extends State<InfringementView>{
  // late VideoPlayerController _controller;
  bool playing = false;

  @override
  void initState() {
    super.initState();
    // print("Connecting to video: ${widget.displayInfringement.videoUrl}");
    // _controller = VideoPlayerController.network(
    //     widget.displayInfringement.videoUrl)
    //   ..initialize().then((_) {
    //     // Ensure the first frame is shown after the video is initialized, even before the play button has been pressed.
    //     setState(() {});
    //   });
    // _controller.setLooping(true);
  }

  @override
  void dispose() {
    super.dispose();
    // _controller.dispose();
  }

  @override
  Widget build(BuildContext context) {
    // double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        title: Text("Infracción ${widget.displayInfringement.id}")
      ),
      drawer: myDrawer(context),
      body: SingleChildScrollView(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          children: [
            ListTile(
              leading: const Icon(Icons.traffic),
              title: Text(widget.displayInfringement.type),
              subtitle: Text(widget.displayInfringement.subtype)
            ),
            const SizedBox(height: 10,),
            Container(
              width: width - 40,
              height: (width - 40)*2/3,
              decoration: BoxDecoration(
                image: DecorationImage(image: NetworkImage(widget.displayInfringement.croppedImageUrl)),
                borderRadius: const BorderRadius.all(Radius.circular(20))
              )
            ),
            const SizedBox(height: 10,),
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Table(
                border: TableBorder.all(),
                children: [
                  TableRow(
                    children: [
                      Container(
                        padding: const EdgeInsets.all(10),
                        child: const Text("Placa:")),
                      Container(
                        padding: const EdgeInsets.all(10),
                        child: Text(widget.displayInfringement.plateNumber))
                    ]
                  ),
                  TableRow(
                    children: [
                      Container(
                        padding: const EdgeInsets.all(10),
                        child: const Text("Fecha:")),
                      Container(
                        padding: const EdgeInsets.all(10),
                        child: Text(widget.displayInfringement.datetime!.toIso8601String().substring(0,10)))
                    ]
                  ),
                  TableRow(
                    children: [
                      Container(
                        padding: const EdgeInsets.all(10),
                        child: const Text("Hora:")),
                      Container(
                        padding: const EdgeInsets.all(10),
                        child: Text(widget.displayInfringement.datetime!.toIso8601String().substring(11,16)))
                    ]
                  )
                ],
              ),
            ),
            const SizedBox(height: 10,),
            const Divider(
              height: 10,
            ),
            const SizedBox(height: 10,),
            const ListTile(
              leading: Icon(Icons.location_pin),
              title: Text("Geolocalización"),
              subtitle: Text("Coordenadas de GPS de la cámara reportante:")
            ),
            const SizedBox(height: 10,),
            Container(
              width: width - 40,
              height: (width - 40)*2/3,
              decoration: const BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(40))
              ),
              child: FlutterMap(
                options: MapOptions(
                  center: LatLng(widget.displayInfringement.location!.latitude, widget.displayInfringement.location!.longitude),
                  zoom: 13.0,
                ),
                // children: [
                //   TileLayerOptions(
                //     urlTemplate: "https://{s}.tile.openstreetmap.org/{z}/{x}/{y}.png",
                //     subdomains: ['a', 'b', 'c']
                //   ),
                //   MarkerLayerOptions(
                //     markers: [
                //       new Marker(
                //         width: 20.0,
                //         height: 20.0,
                //         point: new LatLng(widget.displayInfringement.location!.latitude, widget.displayInfringement.location!.longitude),
                //         builder: (ctx) =>
                //         new Container(
                //           child: new Icon(Icons.gps_fixed),
                //         ),
                //       ),
                //     ],
                //   ),
                // ],
              ),
            ),
            const SizedBox(height: 10,),
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Table(
                border: TableBorder.all(),
                children: [
                  TableRow(
                    children: [
                      Container(
                        padding: const EdgeInsets.all(10),
                        child: const Text("Ciudad:")),
                      Container(
                        padding: const EdgeInsets.all(10),
                        child: Text(widget.displayInfringement.location!.city))
                    ]
                  ),
                  TableRow(
                    children: [
                      Container(
                        padding: const EdgeInsets.all(10),
                        child: const Text("Estado:")),
                      Container(
                        padding: const EdgeInsets.all(10),
                        child: Text(widget.displayInfringement.location!.state))
                    ]
                  ),
                  TableRow(
                    children: [
                      Container(
                        padding: const EdgeInsets.all(10),
                        child: const Text("Pais:")),
                      Container(
                        padding: const EdgeInsets.all(10),
                        child: Text(widget.displayInfringement.location!.country))
                    ]
                  )
                ],
              ),
            ),
            const SizedBox(height: 10,),
            const Divider(
              height: 10,
            ),
            const SizedBox(height: 10,),
            const ListTile(
              leading: Icon(Icons.policy),
              title: Text("Evidencia"),
              subtitle: Text("A continuación se muestra la evidencia recolectada del ilícito:")
            ),
            const SizedBox(height: 10,),
            Container(
              width: width - 40,
              height: (width - 40)*2/3,
              decoration: BoxDecoration(
                image: DecorationImage(image: NetworkImage(widget.displayInfringement.highResolutionImageUrl)),
                borderRadius: BorderRadius.circular(40)
              )
            ),
            const SizedBox(height: 10,),
            // _controller.value.isInitialized
            //   ? Stack(
            //     children: [
            //       AspectRatio(
            //         aspectRatio: _controller.value.aspectRatio,
            //         child: VideoPlayer(_controller),
            //       ),
            //       Positioned(
            //         right: 2,
            //         bottom: 2,
            //         child: FloatingActionButton(
            //           onPressed: (){
            //             setState(() {
            //               playing = !playing;
            //             });
            //             playing?
            //               _controller.play():
            //               _controller.pause();
            //           },
            //           child: Icon(
            //             playing?Icons.pause:Icons.play_arrow, size: 30,
            //           ),
            //         ),
            //       )
            //     ],
            //   )
            //   : Container(),
            const SizedBox(height: 10,),
          ],
        ),
      ),
    );
  }
}