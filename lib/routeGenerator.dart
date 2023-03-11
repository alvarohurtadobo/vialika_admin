
import 'package:flutter/material.dart';
import 'package:vialika_admin/user/ui/login.dart';
import 'package:vialika_admin/user/ui/profile.dart';
import 'package:vialika_admin/user/ui/verifySms.dart';
import 'package:vialika_admin/vialika/model/infringement.dart';
import 'package:vialika_admin/vialika/ui/history.dart';
import 'package:vialika_admin/vialika/ui/homeView.dart';
import 'package:vialika_admin/vialika/ui/newInfringement.dart';
import 'package:vialika_admin/vialika/ui/newsView.dart';
import 'package:vialika_admin/user/ui/vehiclesView.dart';
import 'package:vialika_admin/vialika/ui/inquiriesView.dart';
import 'package:vialika_admin/vialika/ui/infringementView.dart';

class RouteGenerator {
  static Route<dynamic> generateRoute(RouteSettings settings){
    var args = settings.arguments;

    switch(settings.name){
      case "/":
        return MaterialPageRoute(builder: (_) => LoginView());
      case "/verifySms":
        return MaterialPageRoute(builder: (_) => VerifySMSView());
      case "/home":
        return MaterialPageRoute(builder: (_) => HomeView());
      case "/infringement":
        return MaterialPageRoute(builder: (_) => InfringementView(displayInfringement: args as Infringement));
      case "/newInfringement":
        return MaterialPageRoute(builder: (_) => const ExampleDragTarget());
      case "/driver":
        return MaterialPageRoute(builder: (_) => PerfilBody());
      case "/vehicles":
        return MaterialPageRoute(builder: (_) => VehiclesView());
      case "/history":
        return MaterialPageRoute(builder: (_) => HistoryView());
      case "/inquiries":
        return MaterialPageRoute(builder: (_) => InquiriesView());
      case "/news":
        return MaterialPageRoute(builder: (_) => NewsView());
      default:
        return MaterialPageRoute(builder: (_) => ErrorView());
    }
  }
}

class ErrorView extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Error"),
      ),
      body:  const Center(
        child: Text("Error, vuelva a ingresar a el App"),
      )
    );
  }
}