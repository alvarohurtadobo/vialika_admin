import 'package:ffmpeg_kit_flutter/ffmpeg_kit_config.dart';
import 'package:flutter/material.dart';
import 'package:vialika_admin/drawer.dart';
import 'package:cross_file/cross_file.dart';
import 'package:desktop_drop/desktop_drop.dart';
import 'package:ffmpeg_kit_flutter/ffprobe_kit.dart';

class ExampleDragTarget extends StatefulWidget {
  const ExampleDragTarget({Key? key}) : super(key: key);

  @override
  _ExampleDragTargetState createState() => _ExampleDragTargetState();
}

class _ExampleDragTargetState extends State<ExampleDragTarget> {
  XFile? currentFile;

  bool _dragging = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Nueva infracción")),
      drawer: myDrawer(context),
      body: Center(
        child: DropTarget(
          onDragDone: (detail) {
            currentFile = detail.files[0];
            for (XFile myFile in detail.files){
              print("Received file ${currentFile!.path}");
            }

            FFprobeKit.getMediaInformation(currentFile!.path).then((session) async {
              final information = await session.getMediaInformation();
              print("Media information $information");
              if (information == null) {
                // CHECK THE FOLLOWING ATTRIBUTES ON ERROR
                final state = FFmpegKitConfig.sessionStateToString(await session.getState());
                final returnCode = await session.getReturnCode();
                final failStackTrace = await session.getFailStackTrace();
                final duration = await session.getDuration();
                final output = await session.getOutput();
                print("File data is $state, $returnCode, $failStackTrace, $duration, $output");
              }else{
                print("Size ${information.getSize()}");
                print("Duration ${information.getDuration()}");
                print("Format ${information.getFormat()}");
                print("Long format ${information.getLongFormat()}");
                print("Tags ${information.getTags()}");
                print("H ${information.getProperty("height")}");
                print("H ${information.getProperty("coded_height")}");
                print("W ${information.getProperty("coded_width")}");
                print("All ${information.getAllProperties()}");
              }
            });
            setState(() {
              
            });
          },
          onDragEntered: (detail) {
            setState(() {
              _dragging = true;
            });
          },
          onDragExited: (detail) {
            setState(() {
              _dragging = false;
            });
          },
          child: Container(
            height: 200,
            width: 200,
            color: _dragging ? Colors.blue.withOpacity(0.4) : Colors.black26,
            child: currentFile==null
                ? const Center(child: Text("Suelte archivos aquí"))
                : Text(currentFile!.name),
          ),
        ),
      ),
    );
  }
}