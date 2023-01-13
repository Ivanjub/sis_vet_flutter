


import 'dart:typed_data';
import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'pagina.dart';
import 'dart:async';
import 'dart:math';
import 'dart:ui';


class MarcadorLugarPagina extends Pagina {

  
  

  MarcadorLugarPagina() : super (const Icon(Icons.place), 'Marcadores');

  @override
  Widget build(BuildContext context) {
    return MarcadorLugar();
  }
}

class MarcadorLugar extends StatefulWidget {
  const MarcadorLugar();

  @override
  State<StatefulWidget> createState() => MarcadorLugarState();
}

class MarcadorLugarState extends State<MarcadorLugar> {
  MarcadorLugarState();

  static final LatLng centro =  const LatLng(-33.019967, -71.543817);
  

  GoogleMapController? _controladorMapa;
  Map<MarkerId, Marker> _marcadores = <MarkerId, Marker>{};
  MarkerId? _marcadorSeleccionado;
  int _contadorIdMarcador = 1;
  LatLng? _posicionMarcador;
  LatLng? _ultimoLongPres;
      
    

  void _onMapCreated(GoogleMapController controlador) {
    this._controladorMapa = controlador;
  }

  void _anadir() {
    
    if (_marcadores.length == 1)
      return;

    final String ultimoLongPres = '${_ultimoLongPres}';
    final String cadenaIdMarcador = 'coordenadas' /*$_contadorIdMarcador*/;
    _contadorIdMarcador++;
    final MarkerId idMarcador = MarkerId(cadenaIdMarcador);

    final Marker marcador = Marker(
      markerId: idMarcador,
      position: LatLng(_ultimoLongPres!.latitude //+ sin (_contadorIdMarcador * pi / 6.0) / 20.0,
        ,_ultimoLongPres!.longitude //+ cos(_contadorIdMarcador * pi / 6.0) / 20.0,
      ),

      // información de globo marcador
      infoWindow: InfoWindow(
        title: cadenaIdMarcador,
        snippet: 'info ${_ultimoLongPres!.latitude.toStringAsFixed(4)},'
        '${_ultimoLongPres!.longitude.toStringAsFixed(4)}'
      ),
      
      
      //en el marcador seleccionar marcador
      onTap: () => _onMarkerTapped(idMarcador),
      onDragStart: (LatLng posicion) => _onMarkerDrag(idMarcador, posicion),
      onDragEnd: (LatLng posicion) => _onMarkerDragEnd(idMarcador, posicion),
      //onDragStart:(LatLng posicion) => _oneMarkerDrag(idMarcador, posicion),
      
    );
    setState(() {
      _marcadores[idMarcador] = marcador;
      
    });
    
  }  
  
  void _onMarkerTapped(MarkerId idMarcador) {
    final Marker? marcadorTocado = _marcadores[idMarcador];

    if (marcadorTocado!=null) {
      setState(() {
        final MarkerId? idMarcadorAnterior = _marcadorSeleccionado;
        if (idMarcadorAnterior != null && _marcadores.containsKey(idMarcadorAnterior)) {
          final Marker anteriorActualizado = _marcadores[idMarcadorAnterior]!.copyWith(
            iconParam: BitmapDescriptor.defaultMarker
          );
        }
        _marcadorSeleccionado = idMarcador;
        final Marker marcadorNuevo = marcadorTocado.copyWith(
          iconParam: BitmapDescriptor.defaultMarkerWithHue(BitmapDescriptor.hueGreen)
        );
        _marcadores[idMarcador] = marcadorNuevo;
        _posicionMarcador = null;
      });
    }
  }

  void _onMarkerDrag(MarkerId idMarcador, LatLng nuevaPosicion) async {
    setState(() {
      this._posicionMarcador = nuevaPosicion;
    });
  }

  void _onMarkerDragEnd(MarkerId idMarcador, LatLng nuevaPosicion) async {
    final Marker? marcadorTocado = _marcadores[idMarcador];
    if (marcadorTocado != null) {
      setState(() {
        this._posicionMarcador = null;
      });
      await showDialog<void>(
      context: context,
      builder: (BuildContext context) {
       return AlertDialog(
        actions: <Widget> [
          TextButton(
          child: const Text('OK'),
          onPressed: () => Navigator.of(context).pop(),
          )
        ],
         content: Padding(padding: const EdgeInsets.symmetric(vertical: 66),
         child: Column(
           mainAxisSize: MainAxisSize.min,
           children: <Widget>[
             Text('Anterior posición: ${marcadorTocado.position}'),
             Text('Nueva posición: $nuevaPosicion')
           ]
         )),
       );
    });
    }
  }

  void _eliminar(MarkerId idMarcador) {
    setState(() {
      if (_marcadores.containsKey(idMarcador)) {
        _marcadores.remove(idMarcador);
      }
    });
  }


    @override
    Widget build(BuildContext context) {
    final MarkerId? idSeleccionado = _marcadorSeleccionado;
    

    return Stack(
      children: [
        Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Expanded(
              child: GoogleMap(
                
                onMapCreated: _onMapCreated,
                initialCameraPosition: const CameraPosition(target: LatLng(-33.019967, -71.543817),
                zoom: 12.0),
                markers: Set<Marker>.of(_marcadores.values),
                onLongPress: (LatLng pos) {
                  setState(() {
                    _ultimoLongPres
                     = pos;
                     _anadir();
                    });
                    }, 
                    )
              ),


            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[              
              TextButton(
                  onPressed: idSeleccionado == null ? null : () => _eliminar(idSeleccionado),
                  child: const Text('Eliminar')
              )
            ],
            ),


            Visibility(
              
              visible: _posicionMarcador != null,
                child: Container(
                  color: Colors.white70,
                  height: 30,
                  padding: EdgeInsets.only(left: 12, right: 12),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      _posicionMarcador == null ? Container() : Expanded(
                        child: Text("lat: ${_posicionMarcador!.latitude}")),
                      _posicionMarcador == null ? Container() : Expanded(
                        child: Text("lng: ${_posicionMarcador!.longitude}")
                      ),
                    ],
                  )
                )
                )

                
          ],
        )
      ],
    );
  }

}