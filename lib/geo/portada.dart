import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:sis_vet/pago_cliente/Pago.dart';
import 'package:sis_vet/geo/buscar_direccion.dart';
import 'marcador.dart';


class DrawerItem {
  String title;
  IconData icon;

  DrawerItem(this.title, this.icon);
}

class Portada extends StatefulWidget {
  final drawerItems = [
    
     DrawerItem("Marcador", Icons.place),
     DrawerItem("Buscar Dirección", Icons.add_chart_sharp),
     DrawerItem("Valores", Icons.animation)
  ];

  @override
  State<StatefulWidget> createState() => PortadaState();

}

class PortadaState extends State<Portada> {
  int _indiceDrawerItemSeleccionado = 0;

  _getDrawerFragment(int posicion) {
    switch (posicion) {
      
      case 0:
        return  MarcadorLugarPagina();

      case 1:
        return buscarDireccion();

      case 2:
        return clientePago();
      

      default:
        return  const Text("Error");
    }
  }

  _onSelectItem(int index) {
    setState(() => _indiceDrawerItemSeleccionado =  index);
    Navigator.of(context).pop();
  }

  @override
  Widget build(BuildContext context) {
    List<Widget> opcionesDrawer = [];

    for (var i=0; i < widget.drawerItems.length; i++) {
      var d = widget.drawerItems[i];
      opcionesDrawer.add(
         ListTile(
          leading:  Icon(d.icon),
          title:  Text(d.title),
          selected: i == _indiceDrawerItemSeleccionado,
          onTap: () => _onSelectItem(i),
        )
      );
    }

    return  Scaffold(
      appBar:  AppBar(
        title:  Text(widget.drawerItems[_indiceDrawerItemSeleccionado].title),
      ),
      drawer:  Drawer(
        child: Column(
          children: <Widget>[


            const UserAccountsDrawerHeader(
              accountName:  Text("Ivan Guerrero"),
              accountEmail: Text("ivan@ivanguerrero.pro"),
              currentAccountPicture: CircleAvatar(
                //backgroundImage: new AssetImage("assets/profile.png"),
              ),
              /*decoration: new BoxDecoration(
                image: new DecorationImage(
                  image: new AssetImage("assetsbg.jpg"),
                  fit: BoxFit.cover
                )
              ),*/
            ),
            Column(
              children: opcionesDrawer
            )

          ],
        )
      ),
      body: _getDrawerFragment(_indiceDrawerItemSeleccionado),
    );
  }
}