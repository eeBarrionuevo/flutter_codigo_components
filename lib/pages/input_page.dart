import 'package:flutter/material.dart';

class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  int cantidad = 0;
  bool visiblePassword = true;
  TextEditingController matasquita = TextEditingController();

  List<String> superHeroes = [
    "Batman",
    "Superman",
    "Wonder Woman",
    "Flash",
    "Cybor",
    "Aquaman"
  ];

  String auxiliar = "Batman";

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
          inputPassword(),
          SizedBox(
            height: 20.0,
          ),
          inputDate(context),
          SizedBox(
            height: 20.0,
          ),
          buildDropdown(),
        ],
      ),
    );
  }

  DropdownButton<String> buildDropdown() {
    return DropdownButton<String>(
          items: getItemsDrowdown(),
          value: auxiliar,
          onChanged: (String value) {
            auxiliar = value;
            setState(() {
            });
          },
        );
  }

  List<DropdownMenuItem<String>> getItemsDrowdown(){

    List<DropdownMenuItem<String>> federica = [];

    superHeroes.forEach((element) {
        federica.add(
          DropdownMenuItem(
            child: Text(element),
            value: element,
          ),
        );
    });
    return federica;
  }



  Widget inputDate(BuildContext context) {
    return TextField(
      controller: matasquita,
      enableInteractiveSelection: false,
      decoration: InputDecoration(
          border: OutlineInputBorder(borderRadius: BorderRadius.circular(15.0)),
          labelText: "Fecha de nacimiento",
          hintText: "Ingrese su fecha de nacimiento",
          suffixIcon: Icon(Icons.date_range)),
      onTap: () {
        FocusScope.of(context).requestFocus(FocusNode());
        print("Abrir date...");
        selectDate(context);
      },
    );
  }

  selectDate(BuildContext mandarina) async {
    DateTime picked = await showDatePicker(
      context: mandarina,
      initialDate: DateTime.now(),
      firstDate: DateTime(2000),
      lastDate: DateTime(2023),
    );

    if (picked != null) {
      matasquita.text = picked.toString();
    }
  }

  Widget inputPassword() {
    return TextField(
      obscureText: visiblePassword,
      decoration: InputDecoration(
          // icon: Icon(Icons.mail),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(15.0),
          ),
          suffixIcon: IconButton(
            icon: visiblePassword == true
                ? Icon(Icons.remove_red_eye_outlined)
                : Icon(Icons.remove_red_eye),
            onPressed: () {
              visiblePassword = !visiblePassword;
              setState(() {});
            },
          ),
          labelText: "Contraseña",
          hintText: "Ingrese su contraseña",
          helperText: "Ingrese un contraseña válida"),
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
          helperText: "Ingrese un correo electrónico válido"),
    );
  }

  Widget inputSimple() {
    return TextField(
      decoration: InputDecoration(
          border: OutlineInputBorder(borderRadius: BorderRadius.circular(15.0)),
          // icon: Icon(Icons.account_circle),
          suffixIcon: Icon(Icons.person),
          labelText: "Usuario",
          hintText: "Ingrese su usuario...",
          helperText: "Tus datos son confidenciales",
          counter: Text("Cant. letras: $cantidad")),
      onTap: () {
        print("Hiciste tap en el input");
      },
      onChanged: (String value) {
        print(value.length);
        cantidad = value.length;
        setState(() {});
      },
    );
  }
}
