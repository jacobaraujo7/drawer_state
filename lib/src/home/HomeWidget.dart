import 'package:drawer_navigation/src/home/HomeController.dart';
import 'package:drawer_navigation/src/home/pages/ContaPage.dart';
import 'package:drawer_navigation/src/home/pages/FavoritoPage.dart';
import 'package:drawer_navigation/src/home/pages/InicioPage.dart';
import 'package:drawer_navigation/src/home/widgets/CustomDrawer.dart';
import 'package:flutter/material.dart';

class HomeWidget extends StatefulWidget {
  @override
  _HomeWidgetState createState() => _HomeWidgetState();
}

class _HomeWidgetState extends State<HomeWidget> {

  var pages = <Widget>[
    InicioPage(),
    FavoritoPage(),
    ContaPage(),
  ];

  @override
  Widget build(BuildContext context) {
    print("rebuildado");

    return Scaffold(
      drawer: CustomDrawer(),
      appBar: AppBar(
        title: Text("Navegação"),
      ),
      body: StreamBuilder<int>(
        stream: HomeController.of(context).drawerChangeOutput,
        initialData: 0,
        builder: (BuildContext context, AsyncSnapshot snapshot) {
          return pages[snapshot.data];
        },

      ),
    );
  }
}
