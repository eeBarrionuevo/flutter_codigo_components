import 'package:flutter/material.dart';

class AlertPage extends StatelessWidget {
  void showAlert(BuildContext context) {
    showDialog(
        context: context,
        builder: (context) {
          return AlertDialog(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(24),
            ),
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
            actions: [
              FlatButton(
                onPressed: () {
                  Navigator.pop(context);

                },
                child: Text("Cancelar"),

              ),
              FlatButton(
                onPressed: () {

                },
                child: Text("Okay"),
              ),
            ],
          );
        });
  }

  @override
  Widget build(BuildContext lomito) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Alertas"),
      ),
      body: Center(
        child: RaisedButton(
          onPressed: () {
            showAlert(lomito);
          },
          child: Text("Mostrar alerta!"),
        ),
      ),
    );
  }
}
