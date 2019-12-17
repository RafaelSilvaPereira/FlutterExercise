import 'package:flutter/material.dart';
import 'dart:async';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:web_socket_channel/io.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  final channel = IOWebSocketChannel.connect('ws://echo.websocket.org');

  Completer<GoogleMapController> _controller = Completer();

  Set<Marker> _marcadores = {};
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Mapas e geolocalização'),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.startTop,
      floatingActionButton: FloatingActionButton(
        onPressed: this._movimentarCamera,
        child: Icon(Icons.done),
      ),
      body: Container(
        child: GoogleMap(
          mapType: MapType.normal,
          initialCameraPosition: CameraPosition(
            target: LatLng(-7.223367, -35.878513),
            zoom: 16,
          ),
          onMapCreated: this.onMapCreated,
          markers: this._marcadores,
        ),
      ),
    );
  }

  @override
  void initState() {
    super.initState();
    this._carregarMarcadores();
  }

  void onMapCreated(GoogleMapController googleMapController) {
    this._controller.complete(googleMapController);

    // this._controller.future()
  }

  void _movimentarCamera() async {
    GoogleMapController mapController = await this._controller.future;
    mapController.animateCamera(
      CameraUpdate.newCameraPosition(
        CameraPosition(
          target: LatLng(-7.223360, -35.878510),
          zoom: 16,
        ),
      ),
    );
  }

  void _carregarMarcadores() {
    Marker partage = Marker(
      markerId: MarkerId('M'),
      position: LatLng(-7.224140, -35.878936),
    );

    setState(() {
      this._marcadores.add(partage);
    });
  }
}
