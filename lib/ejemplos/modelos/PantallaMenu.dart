import 'package:flutter/material.dart';
import 'package:sis_vet/ejemplos/modelos/PantallaDetalle.dart';
import 'categoria.dart';

class PantallaMenu extends StatefulWidget{
  @override
  _PantallaMenuState createState() => _PantallaMenuState();
}


class _PantallaMenuState extends State<PantallaMenu>{
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(title: Text("Cliente"),backgroundColor: Colors.green,),
      //backgroundColor: Colors.deepOrange,
      body: Container(
            
        child: GridView.builder(
          itemCount: Menu.length,
          gridDelegate: new SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),          
          itemBuilder: (context, index){

            return Container(

              margin:EdgeInsets.all(10),
              width: 50,
              height: 50,
              decoration:  BoxDecoration(                
                color: Colors.orange,
                borderRadius: BorderRadius.circular(10)
              ),
              child: GestureDetector(
                onTap: (){
                  print("ok "+Menu[index].nombre);
                  // Navigator.push(context, MaterialPageRoute(builder: (_)=> ));
                },

                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                  //Image.asset("assets"+Menu[index].foto, width:100,),
                  Text(Menu[index].nombre)
              ],
              ),
              )
            );
          }
         ),
      ),
    );
  }
}