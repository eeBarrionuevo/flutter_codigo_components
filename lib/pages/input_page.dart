import 'package:flutter/material.dart';

class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  int cantidad = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Inputs"),
      ),
      body: ListView(
        padding: EdgeInsets.all(20),
        children: [
          inputSimple(),
          SizedBox(
            height: 20.0,
          ),
          inputMail(),
          SizedBox(
            height: 20.0,
          ),
          TextField(
            obscureText: true,
            decoration: InputDecoration(
              // icon: Icon(Icons.mail),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(15.0),
                ),
                suffixIcon: Icon(Icons.remove_red_eye_outlined),
                labelText: "Contraseña",
                hintText: "Ingrese su contraseña",
                helperText: "Ingrese un contraseña válida"
            ),
          )
        ],
      ),
    );
  }

  Widget inputMail() {
    return TextField(
          keyboardType: TextInputType.emailAddress,
          decoration: InputDecoration(
            // icon: Icon(Icons.mail),
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(15.0),
            ),
            suffixIcon: Icon(Icons.mail),
            labelText: "Correo electrónico",
            hintText: "Ingrese su correo electrónico",
            helperText: "Ingrese un correo electrónico válido"
          ),
        );
  }

  Widget inputSimple() {
    return TextField(
          decoration: InputDecoration(
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(15.0)
            ),
            // icon: Icon(Icons.account_circle),
            suffixIcon: Icon(Icons.person),
            labelText: "Usuario",
            hintText: "Ingrese su usuario...",
            helperText: "Tus datos son confidenciales",
            counter: Text("Cant. letras: $cantidad")
          ),
          onTap: (){
            print("Hiciste tap en el input");
          },
          onChanged: (String value){
            print(value.length);
            cantidad = value.length;
            setState(() {

            });
          },
        );
  }
}
