import 'package:flutter/material.dart';
import 'package:cross_file/cross_file.dart';
import 'package:desktop_drop/desktop_drop.dart';
import 'package:vialika_admin/drawer.dart';

class ExampleDragTarget extends StatefulWidget {
  const ExampleDragTarget({Key? key}) : super(key: key);

  @override
  _ExampleDragTargetState createState() => _ExampleDragTargetState();
}

class _ExampleDragTargetState extends State<ExampleDragTarget> {
  final List<XFile> _list = [];

  bool _dragging = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Nueva infracción")),
      drawer: myDrawer(context),
      body: Center(
        child: DropTarget(
          onDragDone: (detail) {
            print("done");
            for (XFile myFile in detail.files){
              print(myFile.path);
            }
            setState(() {
              _list.addAll(detail.files);
            });
          },
          onDragEntered: (detail) {
            print("entered");
            setState(() {
              _dragging = true;
            });
          },
          onDragExited: (detail) {
            print("exited");
            
            setState(() {
              _dragging = false;
            });
          },
          child: Container(
            height: 200,
            width: 200,
            color: _dragging ? Colors.blue.withOpacity(0.4) : Colors.black26,
            child: _list.isEmpty
                ? const Center(child: Text("Drop here"))
                : Text(_list.map((e) => e.name).join("\n")),
          ),
        ),
      ),
    );
  }
}