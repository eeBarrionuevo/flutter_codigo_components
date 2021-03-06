import 'package:flutter/material.dart';

class SliderPage extends StatelessWidget {

  List<int> listNumber = [2, 10, 50, 55, 43, 22, 42, 77 , 4, 8];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Slider Page"),
      ),
      body: Container(
        child: ListView.builder(
          itemCount: listNumber.length,
          itemBuilder: (BuildContext context, int index) {

            int item = listNumber[index];

            return FadeInImage(
              placeholder: AssetImage("assets/images/jar-loading.gif"),
              image: NetworkImage("https://picsum.photos/500/500/?image=$item"),
            );

          },
        ),
      ),
    );
  }
}
