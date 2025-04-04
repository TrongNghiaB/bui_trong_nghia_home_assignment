import 'package:bui_trong_nghia_home_assignment/core/domain/failure.dart';
import 'package:dartz/dartz.dart';
import 'package:geolocator/geolocator.dart';

class LocationUtil {
  Future<Either<ApiFailure, Position>> getCurrentLocation() async {
    LocationPermission permission;

    // Check location permissions
    permission = await Geolocator.checkPermission();
    if (permission == LocationPermission.denied) {
      permission = await Geolocator.requestPermission();
      if (permission == LocationPermission.denied) {
        return left(const ApiFailure.server(message: 'Location permissions are denied'));
      }
    }

    if (permission == LocationPermission.deniedForever) {
      return left(const ApiFailure.server(message: 'Location permissions are permanently denied, we cannot request permissions'));
    }

    // Check if location services are enabled
    final serviceEnabled = await Geolocator.isLocationServiceEnabled();
    if (!serviceEnabled) {
      return left(const ApiFailure.server(message: 'Location services are disabled'));
    }

    // Get the current position
    final currentLocation = await Geolocator.getCurrentPosition();
    return right(currentLocation);
  }
}
