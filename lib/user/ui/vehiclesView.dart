
import 'package:flutter/material.dart';
import 'package:vialika_admin/drawer.dart';
import 'package:vialika_admin/user/model/vehicles.dart';

class VehiclesView extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    List<Widget> myVehicleWidgets = myVehicles.map((vehicle){
      return vehicleTile(context, vehicle);
    }).toList();
    print("Building ${myVehicleWidgets.length} vehicles");
    return Scaffold(
      appBar: AppBar(
        title: Text("Mis vehículos"),
      ),
      drawer: myDrawer(context),
      body: ListView(
        children: myVehicleWidgets
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: (){},
        child: const Icon(Icons.add),
      ),
    );
  }
}

Widget vehicleTile(BuildContext context, Vehicle vehicle){
  return GestureDetector(
    onTap: (){
      // Navigator.of(context).pushNamed("/vehicle", arguments: vehicle);
    },
    child: Column(
      children: [
        ListTile(
          contentPadding: const EdgeInsets.symmetric(horizontal: 20, vertical: 5),
          leading: const Icon(Icons.warning),
          title: Text("Placa: ${vehicle.plateNumber}"),
          subtitle: Text("Modelo ${vehicle.model}"),
          trailing: Icon(Icons.traffic),
        ),
        const Divider(
          height: 10,
        )
      ],
    ),
  );
}