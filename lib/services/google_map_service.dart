import 'package:geolocator/geolocator.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class GoogleMapService {

  Future<CameraPosition> getCameraPosition() async{
    Position position = await getCurrentPosition();
    return CameraPosition(target: LatLng(position.latitude, position.longitude), zoom: 17);
  }

  Future<Position> getCurrentPosition() async{
    return await Geolocator.getCurrentPosition(desiredAccuracy: LocationAccuracy.best);
  }
}
