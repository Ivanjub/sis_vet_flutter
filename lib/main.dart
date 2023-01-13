

import 'package:flutter/material.dart';
import 'package:sis_vet/ejemplos/ejemplo_pago/pago2.dart';
import 'package:sis_vet/geo/portada.dart';



void main() { 
  runApp(const MyApp());
}

//Widget sin estado
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    
    return MaterialApp(
      title: '',

      //quitar etiqueta diagonal DEBUG
      debugShowCheckedModeBanner: false,
 
      theme: ThemeData(
        // primarySwatch: Colors.amber,
        // primaryColor: Colors.amber
      ),
      
      home: Portada(),

    );
  }
}
