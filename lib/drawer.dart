import 'package:flutter/material.dart';
import 'package:vialika_admin/user/model/user.dart';
import 'package:vialika_admin/vialika/model/infringement.dart';

Widget myDrawer(BuildContext context) {
  return Drawer(
    child: ListView(
      // mainAxisAlignment: MainAxisAlignment.start,
      children: [
        const SizedBox(
          height: 20,
        ),
        Container(
          width: 100,
          height: 100,
            decoration: const BoxDecoration(
              borderRadius: BorderRadius.all(Radius.circular(50)),
          image: DecorationImage(
              image: NetworkImage(
                  'https://firebasestorage.googleapis.com/v0/b/vialika.appspot.com/o/assets%2Favatar.png?alt=media&token=bff67483-e6fa-4291-982f-b1aa8445395c'), fit: BoxFit.contain),
        ), ),
        Column(
          children: [
            Text(currentUser.name, style: const TextStyle(fontSize: 28)),
            Text(currentUser.email),
          ],
        ),
        const SizedBox(
          height: 20,
        ),
        const Divider(
          color: Colors.blueAccent,
        ),
        const SizedBox(
          height: 20,
        ),
        ListTile(
          title: const Text("Inicio"),
          subtitle: const Text("Ventana de inicio"),
          onTap: () {
            Navigator.of(context).pushReplacementNamed("/home");
          },
        ),
        ListTile(
          title: const Text("Infracción"),
          subtitle: const Text("Muestra la última infracción"),
          onTap: () {
            Navigator.of(context).pushReplacementNamed("/infringement",
                arguments: myInfringements[0]);
          },
        ),
        ListTile(
            title: const Text("Historial"),
            subtitle: const Text("Muestra todas las infracciones"),
            onTap: () {
              Navigator.of(context).pushReplacementNamed("/history");
            }),
        ListTile(
            title: const Text("Usuario"),
            subtitle: const Text("Muestra la información de perfil de usuario"),
            onTap: () {
              Navigator.of(context).pushReplacementNamed("/driver");
            }),
        ListTile(
            title: const Text("Vehículos"),
            subtitle: const Text("Muestra todos los vehículos registrados"),
            onTap: () {
              Navigator.of(context).pushReplacementNamed("/vehicles");
            }),
        ListTile(
            title: const Text("Aclaraciones"),
            subtitle:
                const Text("Lista las apelaciones realizadas por los usuarios"),
            onTap: () {
              Navigator.of(context).pushReplacementNamed("/inquiries");
            }),
        ListTile(
            title: const Text("Notificaciones"),
            subtitle:
                const Text("Lista las ultimas notificaciones del sistema"),
            onTap: () {
              Navigator.of(context).pushReplacementNamed("/news");
            }),
        ListTile(
            title: const Text("Cerrar sesión"),
            subtitle: const Text("Cierra sesión"),
            onTap: () {
              Navigator.of(context).pushReplacementNamed("/");
            }),
      ],
    ),
  );
}
