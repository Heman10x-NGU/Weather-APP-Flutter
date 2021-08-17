import 'package:geolocator/geolocator.dart';
import 'package:geocoding/geocoding.dart';
class Location{
  double longitude,latitude;

  Future<void> getCurrentLocation() async{
    try {
      Position position = await Geolocator.getCurrentPosition(
          desiredAccuracy: LocationAccuracy.best,forceAndroidLocationManager: true);

      latitude=position.latitude;
      longitude=position.longitude;
    }
    catch(e){
      print(e);
    }
  }
}