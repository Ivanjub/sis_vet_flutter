// import 'dart:ffi';
// import 'dart:html';
import 'package:flutter/material.dart';
import 'package:sis_vet/geo/marcador.dart';
import 'package:sis_vet/geo/portada.dart';
// import 'package:google_maps_flutter/google_maps_flutter.dart';
// import '/ejemplos/PantallaDetalle.dart';
// import 'package:sis_vet/geo/coordenadas.dart';
// import 'package:sis_vet/geo/mapa.dart';
// import 'package:sis_vet/geo/portada.dart';
// import 'package:sis_vet/geo/visita1.dart';
import 'ejemplos/modelos/categoria.dart';
import 'ejemplo_pago/pago1.dart';

class Cliente extends StatefulWidget{
  // const Cliente({super.key});

  @override
  
  _ClienteState createState() => _ClienteState();
}


class _ClienteState extends State<Cliente>{
  
  @override
  Widget build(BuildContext context) {


    return Scaffold(
      
      appBar: AppBar(title: Text("Cliente "), backgroundColor: Colors.green,),
      //backgroundColor: Colors.deepOrange,   
                 
      body: Container(
        margin: const EdgeInsets.all(5),
        width: double.infinity,
        height: double.infinity,

          
          child: Column(
            children: [
              //cuadrado con espacio
              SizedBox(
                height: 60,
                width: double.infinity,

                //hijo de children>column
                child: ListView.builder(
                  physics: const BouncingScrollPhysics(),
                  itemCount: Menu.length,
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (ctx, index){
                    
                    return  GestureDetector(
                      onTap: (){
                        Navigator.push(context, MaterialPageRoute(builder: (_)=> Portada()));
                        setState(() {
                          
                          //current = index;

                        });
                      },
                    
                    child: AnimatedContainer(
                      duration:  const Duration(milliseconds: 300),
                      margin: EdgeInsets.all(5),
                      width: 80,
                      height: 45,
                      decoration: BoxDecoration(color: Colors.green),

                    child: Center(
                      
                      child: Text(Menu[index].nombre,
                       textAlign: TextAlign.center
                       
                       ),
                       
                    ),

                  ),
                    );
                  }
                  ),

                ),

                Expanded(
                  
                  child: 
                  
                  Positioned(
                    top: 2,
                  child: TextButton(onPressed: (){
                    ButtonStyle: ButtonStyle ;
                  }, child: Text('PAGO')
                  ),
                )
                  
                )

                

            ],
          ),
          ),

        );

      }
      }

