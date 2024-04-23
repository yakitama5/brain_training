import 'package:geolocator/geolocator.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'location_provider.g.dart';

@riverpod
Future<Position> location(LocationRef ref) async {
  final serviceEnabled = await Geolocator.isLocationServiceEnabled();
  if (!serviceEnabled) {
    return Future.error('Location services are disabled.');
  }

  final permission = await Geolocator.checkPermission();
  if (permission == LocationPermission.denied) {
    final requestResult = await Geolocator.requestPermission();
    if (requestResult == LocationPermission.denied) {
      return Future.error('Location permissions are denied');
    }
  }

  if (permission == LocationPermission.deniedForever) {
    return Future.error('''
Location permissions are permanently denied, we cannot request permissions.
''');
  }

  return Geolocator.getCurrentPosition();
}
