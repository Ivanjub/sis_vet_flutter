import 'package:flutter/material.dart';


class clientePago extends StatefulWidget{
  // const Cliente({super.key});

  @override
  
  _clientePagoState createState() => _clientePagoState();
}



class _clientePagoState extends State<clientePago>{


  
String producto  = 'producto';
String producto1 = 'producto1';
String producto2 = 'producto2';
String producto3 = 'producto3';
String producto4 = 'producto4';

List<String> total = [];


  @override
  Widget build(BuildContext context) {

    
    bool? condicion = false;

    return Scaffold(      
      // appBar: AppBar(title: Text("Cliente - Pago "), 
      // backgroundColor: Colors.lightGreen),
      backgroundColor: Colors.white,   
                 
      body:Stack(
        
        children: [ 
          Positioned(
            left: 180,
            top: 50,
            
            child: Column(
              
        children: [
          // for(var item in total.length values)
          
            Row(
              
              children: [
                Container(
                  padding: EdgeInsets.only(top: 3,bottom: 3),
                  width: 150,                 
                  decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(4),
                  color: Colors.blueAccent                  
              ),
                  child: Text('${producto}',
                  textAlign: TextAlign.center,
                  style: const TextStyle(
                  color: Colors.black,
                  backgroundColor: Colors.blue,
                  fontSize: 20)
            ),
            ),
            
            Checkbox(
              value: condicion,
              activeColor: Colors.blue,
              onChanged: (newbool){
              setState(() {
                condicion = newbool;
              });},            
            ),
            ]),
                    
            Row(
              children: [
                Container(
                  padding: const EdgeInsets.only(top: 3,bottom: 3),
                  width: 150,
                  decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(7),
                  color: Colors.blueAccent
              ),
                  child: Text('${producto1}',
                  textAlign: TextAlign.center,
                  style: const TextStyle(
                  color: Colors.black,
                  backgroundColor: Colors.blue,
                  fontSize: 20)
            ),
            ),
            
            Checkbox(
              value: condicion,
              activeColor: Colors.blue,
              onChanged: (newbool){
              setState(() {
                condicion = newbool;
              });},            
            ),
            ]),

            Row(
              children: [
                Container(
                  padding: const EdgeInsets.only(top: 3,bottom: 3),
                  width: 150,
                  decoration: BoxDecoration(
                  color: Colors.blueAccent,
                  borderRadius: BorderRadius.circular(7),
              ),
                  child: Text('${producto2}',
                  textAlign: TextAlign.center,
                  style: const TextStyle(
                  color: Colors.black,
                  backgroundColor: Colors.blue,
                  fontSize: 20)
            ),
            ),
            
            Checkbox(
              value: condicion,
              activeColor: Colors.blue,
              onChanged: (newbool){
              setState(() {
                condicion = newbool;
              });},            
            ),
            ]),

            Row(
              children: [
                Container(
                  padding: const EdgeInsets.only(top: 3,bottom: 3),
                  width: 150,
                  decoration: BoxDecoration(
                  color: Colors.blueAccent,
                  borderRadius: BorderRadius.circular(7),
              ),
                  child: Text('${producto3}',
                  textAlign: TextAlign.center,
                  style: const TextStyle(
                  color: Colors.black,
                  backgroundColor: Colors.blue,
                  fontSize: 20)
            ),
            ),
            
            Checkbox(
              value: condicion,
              activeColor: Colors.blue,
              onChanged: (newbool){
              setState(() {
                condicion = newbool;
              });},            
            ),
            ]),
        ]
        ),
          ),

        // boton
        Positioned(
          left: 220,
          top: 250,
          child: TextButton(
            style: TextButton.styleFrom(
            backgroundColor:Colors.amber,
            minimumSize: const Size(100, 30)
            ),
          onPressed: (){
            _metodo_pago();
          }, 
          child: const Text('Pagar',
          style: TextStyle(
          color: Colors.black,
          fontSize: 20),
              )
              )
                    
        )
        ]
          )
        
              
              );
               
               
               }


void _metodo_pago(){
  
  this.producto;
  this.producto1;

  return;
           
}


  void payNowClicked(){}


}
               
               

