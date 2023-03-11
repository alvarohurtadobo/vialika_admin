import 'package:flutter/material.dart';
import 'package:vialika_admin/drawer.dart';
import 'package:vialika_admin/user/model/user.dart';

List<String> countries = ["Bolivia", "Argentina", "Mexico"];
String currentCountry = currentUser.location!.country;

class PerfilBody extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Perfil de conductor"),
      ),
      drawer: myDrawer(context),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal:20.0),
        child: ListView(
          // crossAxisAlignment: CrossAxisAlignment.center,
          // mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                CircleAvatar(
                  backgroundColor: Theme.of(context).accentColor,
                  backgroundImage: const NetworkImage('https://firebasestorage.googleapis.com/v0/b/vialika.appspot.com/o/assets%2Favatar.png?alt=media&token=bff67483-e6fa-4291-982f-b1aa8445395c'),
                  radius: 100,
                ),
                Text(currentUser.name, style: const TextStyle(fontSize: 28)),
                Text(currentUser.email),
              ],
            ),
            const SizedBox(height: 40,),
            Form(
              child: Column(
                children: <Widget>[
                  TextFormField(
                    initialValue: currentUser.phoneNumber,
                    enabled: true,
                    decoration: const InputDecoration(
                      icon: Padding(
                        padding: EdgeInsets.symmetric(horizontal: 15),
                        child: Icon(Icons.phone),
                      ),
                    )
                  ),
                  TextFormField(
                    initialValue: currentUser.email,
                    enabled: true,
                    decoration: const InputDecoration(
                      icon: Padding(
                        padding: EdgeInsets.symmetric(horizontal: 15),
                        child: Icon(Icons.place),
                      ),
                    )
                  ),
                  DropdownButton<String>(
                    itemHeight: 60,
                    value: currentCountry,
                    isExpanded: true,
                    underline: Container(),
                    onChanged: (String? newValue){
                      currentCountry = newValue!;
                    },
                    items: countries.map<DropdownMenuItem<String>>((String country){
                      return DropdownMenuItem(
                        value: country,
                        child: ListTile(
                          leading: Icon(Icons.gps_not_fixed),
                          title: Text(country),
                        )
                      );
                    }).toList(),
                  )
                ],
              )
            ),
            const Divider(height: 20,),
            const ListTile(
              leading: Icon(Icons.note),
              title: Text("Información legal"),
              // subtitle: Text("Obtiene un mes gratis al referir a un amigo"),
            ),
            ElevatedButton(
              onPressed: (){
                Navigator.of(context).pop();
              },
              child: const Text("Actualizar")
            )
          ],
        ),
      ),
    );
  }
}