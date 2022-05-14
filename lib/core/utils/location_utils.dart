import 'dart:math';

import 'package:geolocator/geolocator.dart';
import 'package:oceanview/common/logger.dart';
import 'package:oceanview/common/station_info.dart';
import 'package:oceanview/core/utils/constants.dart';

// ignore_for_file: non_constant_identifier_names
class LocationUtils {
  static final LocationUtils _instance = LocationUtils._internal();

  factory LocationUtils() => _instance;

  LocationUtils._internal();

  static final GeolocatorPlatform _geolocatorPlatform =
      GeolocatorPlatform.instance;

  Future<StationInfo> findNearStation() async {
    StationInfo nearStaion = StationInfo();
    double stationDistance = 100;

    Position _currentLocation = await determinePosition();
    for (var element in AppConstants.station_190) {
      // 개인으로 var를 지양하고 싶음,,
      double _distance =
          (pow(((element['gpsX'] as double) - _currentLocation.longitude), 2)
                  as double) +
              (pow(((element['gpsY'] as double) - _currentLocation.latitude), 2)
                  as double);
      if (_distance < stationDistance) {
        stationDistance = _distance;
        nearStaion = StationInfo(
            nearStation: element['nodeName'],
            nodeId: element['nodeId'].toString());
      }
    }

    logger.d(nearStaion);

    return nearStaion;
  }

  Future<Position> determinePosition() async {
    final hasPermission = await _handlePermission();

    if (!hasPermission) {
      // 권한 없을 시 부산역 고정?
      return Position(
          longitude: 129.040208807805,
          latitude: 35.116590670941,
          timestamp: DateTime.now(),
          accuracy: 0.0,
          altitude: 0.0,
          heading: 0.0,
          speed: 0.0,
          speedAccuracy: 0.0);
    }

    return await Geolocator.getCurrentPosition();
  }

  Future<bool> _handlePermission() async {
    bool serviceEnabled;
    LocationPermission permission;

    // Test if location services are enabled.
    serviceEnabled = await _geolocatorPlatform.isLocationServiceEnabled();
    if (!serviceEnabled) {
      // Location services are not enabled don't continue
      // accessing the position and request users of the
      // App to enable the location services.
      // _updatePositionList(
      //   _PositionItemType.log,
      //   _kLocationServicesDisabledMessage,
      // );
      return false;
    }

    permission = await _geolocatorPlatform.checkPermission();
    if (permission == LocationPermission.denied) {
      permission = await _geolocatorPlatform.requestPermission();
      if (permission == LocationPermission.denied) {
        // Permissions are denied, next time you could try
        // requesting permissions again (this is also where
        // Android's shouldShowRequestPermissionRationale
        // returned true. According to Android guidelines
        // your App should show an explanatory UI now.
        // _updatePositionList(
        //   _PositionItemType.log,
        //   _kPermissionDeniedMessage,
        // );

        return false;
      }
    }

    if (permission == LocationPermission.deniedForever) {
      // Permissions are denied forever, handle appropriately.
      // _updatePositionList(
      //   _PositionItemType.log,
      //   _kPermissionDeniedForeverMessage,
      // );

      return false;
    }

    // When we reach here, permissions are granted and we can
    // continue accessing the position of the device.
    // _updatePositionList(
    //   _PositionItemType.log,
    //   _kPermissionGrantedMessage,
    // );
    return true;
  }
}
