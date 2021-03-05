import 'package:flutter/material.dart';

class CardPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Cards"),
      ),
      body: ListView(
        padding: EdgeInsets.all(15),
        children: [
          cardType1(),
          cardType2(),
          cardType1(),
          cardType2(),
          cardType1(),
          cardType2(),
          cardType1(),
        ],
      ),
    );
  }

  Card cardType2() {
    return Card(
      elevation: 3.0,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(15.0)
      ),
      clipBehavior: Clip.antiAlias,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          FadeInImage(
            placeholder: AssetImage("assets/images/jar-loading.gif"),
            image: NetworkImage("https://i.pinimg.com/originals/3e/0a/11/3e0a11e62568f05e49f5310382e013fd.jpg"),
            height: 150.0,
            fit: BoxFit.cover,
          ),
          Row(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                padding: EdgeInsets.all(10),
                child: Text("The Silmarillion"),
              ),
              Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Icon(Icons.favorite),
                  Icon(Icons.share),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }

  Widget cardType1() {
    return Card(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15.0)),
      elevation: 3.0,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          ListTile(
            title: Text("The Silmarillion"),
            subtitle: Text("Lorem ipsum"),
            leading: Icon(Icons.exposure),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              FlatButton(
                onPressed: () {},
                child: Text("Cancelar"),
              ),
              FlatButton(
                onPressed: () {},
                child: Text("Okay"),
              )
            ],
          ),
        ],
      ),
    );
  }
}
