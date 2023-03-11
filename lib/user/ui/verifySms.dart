
import 'package:flutter/material.dart';

class VerifySMSView extends StatefulWidget{

  @override 
  _VerifySMSViewState createState() => _VerifySMSViewState();
}

class _VerifySMSViewState extends State<VerifySMSView>{
  String smsCode = "";
  GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Ingrese el código del SMS")
      ),
      body: Container(
        padding: const EdgeInsets.all(20),
        child: Center (
          child: Form(
            key: _formKey,
            child: Column(
              children: [
                TextFormField(
                  decoration: const InputDecoration(
                    labelText: "Código SMS"
                  ),
                  validator: (value){
                    if(value!.isEmpty){
                      return "Por favor ingrese el número de verificación";
                    }
                    return null;
                  },
                  onChanged: (value){
                    smsCode = value;
                  },
                ),
                const SizedBox(
                  height: 20,
                ),
                ElevatedButton(
                  onPressed: (){
                    if(_formKey.currentState!.validate()){
                      if(smsCode == "0000"){
                        Navigator.of(context).pushNamed("/home");
                      }
                    }
                  },
                  child: const Text("Continuar")
                )
              ],
            ),
          ),
        ),
      )
    );
  }
}