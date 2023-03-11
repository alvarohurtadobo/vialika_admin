
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class LoginView extends StatefulWidget{

  _LoginViewState createState() => _LoginViewState();
}

class _LoginViewState extends State<LoginView>{
  GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  String textInput = "";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: EdgeInsets.all(20),
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage("assets/welcomeImage.jpeg"),
            fit: BoxFit.cover,

          )
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              width: 160,
              height: 160,
              decoration: BoxDecoration(
                image: DecorationImage(image: AssetImage("assets/iconWhite.png"))
              ),
            ),
            Text("Vialika", style: TextStyle(fontSize: 78, color: Colors.purple),),
            Text("CONTROL DE TRÁFICO", style: TextStyle(fontSize: 20, color: Colors.white, fontWeight: FontWeight.bold),),
            SizedBox(
              height: 100,
            ),
            Form(
              key: _formKey,
              child: Column(
                children: [
                  TextFormField(
                    decoration: InputDecoration(
                      labelText: "Número de teléfono",
                      fillColor: Colors.white
                      
                    ),
                    style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold, fontSize: 24),
                    validator: (value){
                      if(value!.isEmpty){
                        return "Por favor ingrese su número de celular";
                      }
                      return null;
                    },
                    onChanged: (value){
                      textInput = value;
                    },
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  ElevatedButton(
                    onPressed: (){
                      if(_formKey.currentState!.validate()){
                        if(textInput == "0000"){
                          Navigator.of(context).pushNamed("/verifySms");
                        }
                      }
                    },
                    child: Text("Continuar")
                  )
                ],
              ),
            )
          ],
        ),
      )
    );
  }
}