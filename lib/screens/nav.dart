import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:social_app_ui/screens/add_poi.dart';

class Nav extends StatefulWidget {
  @override
  _Nav createState() => _Nav ();
}

class _Nav extends State<Nav> {
  List<Marker> allMarkers = [];
  @override

  @override
  build(context) {
    return Stack (children: [

      GoogleMap (
        initialCameraPosition: CameraPosition (
            target: LatLng (24.142, -110.321),
            zoom: 10
        ),
        myLocationEnabled: true,
        mapType: MapType.terrain,
        compassEnabled: true,
      ),
      Positioned (
        top: 50,
        right: 20,
        child:
        FloatingActionButton (
          shape: RoundedRectangleBorder (
            borderRadius: BorderRadius.all (
              Radius.circular (16.0)
              ,)
            ,),
          elevation: 0,
          backgroundColor: Colors.white,
          foregroundColor: Colors.black,
          onPressed: () {},
          child: Icon (Icons.search),
        ),
      ),
      Positioned (
        top: 120,
        right: 20,
        child:
        FloatingActionButton (
          shape: RoundedRectangleBorder (
            borderRadius: BorderRadius.all (
              Radius.circular (16.0)
              ,)
            ,),
          elevation: 0,
          backgroundColor: Colors.white,
          foregroundColor: Colors.black,
          onPressed: () {
            Navigator.push (
              context,
              MaterialPageRoute (builder: (context) => AddPoi ()),
            );
          },
          child: Icon (
              Icons.add
          ),

        ),
      ),
      Positioned (
        top: 190,
        right: 20,
        child:
        FloatingActionButton (
          shape: RoundedRectangleBorder (
            borderRadius: BorderRadius.all (
              Radius.circular (16.0)
              ,)
            ,),
          elevation: 0,
          backgroundColor: Colors.white,
          foregroundColor: Colors.black,
          onPressed: () {},
          child: Icon (Icons.gps_fixed),
        ),
      ),
    ]);

  }
}




