import 'package:flutter/material.dart';

class AlertPage extends StatelessWidget {

  void showAlert(BuildContext saltado){
    showDialog(
      context: saltado,
      builder: (saltado){
        return AlertDialog(
          title: Text("Aquí va el título"),
          content: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              FlutterLogo(
                size: 100,
              ),
              Text("Contenido del alert"),
            ],
          ),
        );
      }
    );
  }

  @override
  Widget build(BuildContext lomito) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Alertas"),
      ),
      body: Center(
        child: RaisedButton(
          onPressed: (){
            showAlert(lomito);
          },
          child: Text("Mostrar alerta!"),
        ),
      ),
    );
  }


}
