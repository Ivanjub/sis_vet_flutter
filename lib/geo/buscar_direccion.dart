import 'package:awesome_snackbar_content/awesome_snackbar_content.dart';
import 'package:flutter/material.dart';
import 'package:flutter_google_places/flutter_google_places.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:google_maps_webservice/places.dart';
import 'package:google_api_headers/google_api_headers.dart';
import 'package:sis_vet/pago_cliente/Pago.dart';

class buscarDireccion extends StatefulWidget {
  const buscarDireccion({Key? key}) : super(key: key);

  
  @override
  State<buscarDireccion> createState() => _SearchPlacesScreenState();

}

const kGoogleApiKey = 'ApiKey';
final homeScaffoldKey = GlobalKey<ScaffoldState>();




class _SearchPlacesScreenState extends State<buscarDireccion> {
  static const CameraPosition initialCameraPosition = CameraPosition(
    target: LatLng(-33.0482728,-71.6447253), zoom: 10.0);

  Set<Marker> markersList = {};

  late GoogleMapController googleMapController;

  final Mode _mode = Mode.overlay;

  //  var showDir = displayPrediction(p!,homeScaffoldKey.currentState);


  
  

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: homeScaffoldKey,
      
      body: Column(
        children:[

          // stack contiene mapa y boton buscar direccion
          Stack(
        children:[
          SizedBox(
            height: 500,
            child: GoogleMap(
            initialCameraPosition: initialCameraPosition,
            markers: markersList,
            mapType: MapType.normal,
            onMapCreated: (GoogleMapController controller) {
            googleMapController = controller;
            },
      ),
      
      ),
          ElevatedButton(onPressed: _handlePressButton,
            child: const Text("Buscar"))
        ]
        ),

          // sector que contiene el boton guardar dirección
          
            Padding(
              padding: EdgeInsets.only(top: 40, right: 140),
              child: Column(
              
              children: [

                 Text('Se muestra Dirección',
                  textAlign: TextAlign.center,
                  style: const TextStyle(
                  color: Colors.white,
                  backgroundColor: Colors.cyan,
                  fontSize: 20)
                  ),

                  Container(
                    height: 20,
                  ),
                  
                  TextButton(
                    style: TextButton.styleFrom(
                      backgroundColor:Colors.blue,
                      minimumSize: const Size(100, 30)
                      ),
                    onPressed: (){
                      _guardar_direccion();
                    }, 
                    
                    child: const Text("Guardar Direccion",
                      style: TextStyle(
                      color: Colors.white,
                    )
                    )
                    )
                    ]//children
                  )

                  )

            ]
            ),

        
      );
    
  }

  Future<void> _handlePressButton() async {
    Prediction? p = await PlacesAutocomplete.show(
        context: context,
        apiKey: kGoogleApiKey,
        onError: onError,
        mode: _mode,
        language: 'es',
        strictbounds: false,
        types: [""],
        decoration: InputDecoration(
            hintText: 'Buscar',
            focusedBorder: OutlineInputBorder(borderRadius: BorderRadius.circular(20), 
            borderSide: BorderSide(color: Colors.white))),
        components: [Component(Component.country,"cl"),Component(Component.country,"chl")]);


    displayPrediction(p!,homeScaffoldKey.currentState);
  }

  void onError(PlacesAutocompleteResponse response){

    ScaffoldMessenger.of(context).showSnackBar(SnackBar(
      elevation: 5,
      behavior: SnackBarBehavior.floating,
      backgroundColor: Colors.transparent,
      content: AwesomeSnackbarContent(
        title: 'Message',
        message: response.errorMessage!,
        contentType: ContentType.failure,
      ),
    ));

    // homeScaffoldKey.currentState!.showSnackBar(SnackBar(content: Text(response.errorMessage!)));
  }

  Future<void> displayPrediction(Prediction p, ScaffoldState? currentState) async {

    GoogleMapsPlaces places = GoogleMapsPlaces(
      apiKey: kGoogleApiKey,
      apiHeaders: await const GoogleApiHeaders().getHeaders()
    );

    PlacesDetailsResponse detail = await places.getDetailsByPlaceId(p.placeId!);

    final lat = detail.result.geometry!.location.lat;
    final lng = detail.result.geometry!.location.lng;

    markersList.clear();
    markersList.add(Marker(markerId: const MarkerId("0"),
    position: LatLng(lat, lng),
    infoWindow: InfoWindow(title: detail.result.name)));

    setState(() {});

     googleMapController.animateCamera(CameraUpdate.newLatLngZoom(LatLng(lat, lng), 14.0));

           

  }
  
  
  void _guardar_direccion() {}
}

