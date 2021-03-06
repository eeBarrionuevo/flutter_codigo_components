import 'package:flutter/material.dart';
import 'package:flutter_codigo_components/constants.dart';
import 'package:flutter_codigo_components/pages/alerts_page.dart';
import 'package:flutter_codigo_components/pages/animation_page.dart';
import 'package:flutter_codigo_components/pages/avatar_page.dart';
import 'package:flutter_codigo_components/pages/card_page.dart';
import 'package:flutter_codigo_components/pages/input_page.dart';
import 'package:flutter_codigo_components/pages/slider_page.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.all(15.0),
            child: Column(
              children: [
                Image.network(
                  "https://ih1.redbubble.net/image.622748019.0162/pp,504x498-pad,600x600,f8f8f8.u1.jpg",
                  width: 180,
                ),
                Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: Text(
                    "COMPONENTES",
                    style: kTitlePageTextStyle,
                  ),
                ),
                ItemMenuWidget(
                  title: "Alertas",
                  subtitle: "Aquí irá el módulo de alertas",
                  icon: Icons.notifications,
                  onTap: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context) => AlertPage()));
                  },
                ),
                ItemMenuWidget(
                  title: "Avatars",
                  subtitle: "Aquí irá el módulo de alertas",
                  icon: Icons.person,
                  onTap: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context) => AvatarPage()));
                  },
                ),
                ItemMenuWidget(
                  title: "Cards",
                  subtitle: "Aquí irá el módulo de cards",
                  icon: Icons.image_rounded,
                  onTap: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context) => CardPage()));
                  },
                ),
                ItemMenuWidget(
                  title: "Inputs",
                  subtitle: "Aquí irá el módulo de inputs",
                  icon: Icons.input,
                  onTap: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context) => InputPage()));
                  },
                ),
                ItemMenuWidget(
                  title: "Slider",
                  subtitle: "Aquí irá el módulo de slider",
                  icon: Icons.imagesearch_roller,
                  onTap: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context) => SliderPage()));
                  },
                ),
                ItemMenuWidget(
                  title: "Animation",
                  subtitle: "Aquí irá el módulo de animaciones",
                  icon: Icons.animation,
                  onTap: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context) => AnimationPage()));
                  },
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class ItemMenuWidget extends StatelessWidget {

  final String title;
  final String subtitle;
  final IconData icon;
  final Function onTap;

  ItemMenuWidget({this.title, this.subtitle, this.icon, this.onTap});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(10.0),
      decoration: BoxDecoration(
          color: Color(0xff2A3950), borderRadius: BorderRadius.circular(12.0)),
      child: ListTile(
        onTap: onTap,
        title: Text(
          title,
          style: TextStyle(
            fontFamily: "Fjalla One",
            fontSize: 18.0,
          ),
        ),
        subtitle: Text(
          subtitle,
          style: TextStyle(
            fontFamily: "Fjalla One",
            fontSize: 12.0,
          ),
        ),
        trailing: Icon(Icons.chevron_right),
        leading: Icon(
          icon,
          size: 28.0,
        ),
      ),
    );
  }
}
