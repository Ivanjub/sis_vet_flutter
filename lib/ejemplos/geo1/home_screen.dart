import 'package:flutter/material.dart';
import 'package:sis_vet/ejemplos/geo1/pantallas/current_location_screen.dart';
import 'package:sis_vet/ejemplos/geo1/pantallas/nearby_places_screen.dart';
import 'package:sis_vet/geo/buscar_direccion.dart';
import 'package:sis_vet/ejemplos/geo1/pantallas/simple_map_screen.dart';

import 'pantallas/polyline_screen.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Flutter Google Maps"),
        centerTitle: true,
      ),
      body: SizedBox(
        width: MediaQuery.of(context).size.width,
        child: Column(
          children: [
            ElevatedButton(onPressed: (){
              Navigator.of(context).push(MaterialPageRoute(builder: (BuildContext context){
                return const SimpleMapScreen();
              }));
            }, child: const Text("Simple Map")),

            ElevatedButton(onPressed: (){
              Navigator.of(context).push(MaterialPageRoute(builder: (BuildContext context){
                return const CurrentLocationScreen();
              }));
            }, child: const Text("User current location")),

            ElevatedButton(onPressed: (){
              Navigator.of(context).push(MaterialPageRoute(builder: (BuildContext context){
                return const buscarDireccion();
              }));
            }, child: const Text("Search Places")),


            ElevatedButton(onPressed: (){
              Navigator.of(context).push(MaterialPageRoute(builder: (BuildContext context){
                return const NearByPlacesScreen();
              }));
            }, child: const Text("Near by Places")),


            ElevatedButton(onPressed: (){
              Navigator.of(context).push(MaterialPageRoute(builder: (BuildContext context){
                return const PolylineScreen();
              }));
            }, child: const Text("Polyline between 2 points"))
          ],
        ),
      ),
    );
  }
}