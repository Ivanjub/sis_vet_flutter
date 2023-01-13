import 'package:flutter/material.dart';
import 'package:sis_vet/ejemplos/modelos/detalle.dart';

class PantallaDetalle extends StatefulWidget {
  

  @override
  State<PantallaDetalle> createState() => _PantallaDetalleState();
}

class _PantallaDetalleState extends State<PantallaDetalle> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(backgroundColor: Colors.deepOrange,
     
     body: Container(
      margin: EdgeInsets.all(50),
      padding: EdgeInsets.all(10),
      decoration: BoxDecoration(color: Colors.white,
      borderRadius: BorderRadius.circular(10),),
       
       child: ListView.builder(
      itemCount: Datos.length,itemBuilder:(context,index){
        return (index % 2 ==0)
        ? _item_left(Datos[index].nombre, Datos[index].foto)
        : _item_left(Datos[index].nombre, Datos[index].foto);

      })));}
}

Widget _item_left(String texto, String imagen){
  return Row(
    children: [
      Expanded(flex: 1,child: Text(texto)),
      Expanded(flex: 1,child: Image.asset("assets/" +imagen,width: 200,))
    ],

  );
}

Widget _item_right(String texto, String imagen){
  return Row(
    children: [
      Expanded(flex: 1,child: Text(texto)),
      Expanded(flex: 1,child: Image.asset("assets/" +imagen,width: 200,))
    ],

  );
}