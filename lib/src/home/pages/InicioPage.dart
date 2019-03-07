import 'package:drawer_navigation/src/home/HomeController.dart';
import 'package:flutter/material.dart';

class InicioPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: RaisedButton(
        child: Text("Ir para favoritos"),
        onPressed: () {
        HomeController.of(context).drawerChangeInput.add(1);
      },)
    );
  }
}
