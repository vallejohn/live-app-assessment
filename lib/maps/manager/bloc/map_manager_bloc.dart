import 'dart:math';

import 'package:bloc/bloc.dart';
import 'package:eigital_flutter_assessment/services/google_map_service.dart';
import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:geolocator/geolocator.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

part 'map_manager_event.dart';
part 'map_manager_state.dart';
part 'map_manager_bloc.freezed.dart';

class MapManagerBloc extends Bloc<MapManagerEvent, MapManagerState> {
  final GoogleMapService _googleMapService;

  MapManagerBloc({required GoogleMapService googleMapService})
      : _googleMapService = googleMapService,
        super(const _Initial()) {
    on<_OnCurrentLocationTapped>(_onCurrentLocationTapped);
    on<_OnGenerateRandomLocation>(_onGenerateRandomLocation);
  }

  void _onCurrentLocationTapped(_OnCurrentLocationTapped event, Emitter<MapManagerState> emit) async{
    emit(MapManagerState.onLocationSet(
        cameraUpdate: CameraUpdate.newCameraPosition(await _googleMapService.getCameraPosition())
      )
    );
  }

  void _onGenerateRandomLocation(_OnGenerateRandomLocation event, Emitter<MapManagerState> emit) async{
    double minLat, minLng, maxLat, maxLng;

    Set<Marker> markers = new Set();

    Position minPosition = await _googleMapService.getCurrentPosition();

    int randomNum = Random().nextInt(50);

    var r = .01 * sqrt(randomNum);
    var tetha = randomNum * 2 * pi;

    double x = minPosition.latitude + r * cos(tetha);
    double y = minPosition.longitude + r * sin(tetha);

    markers.add(Marker(markerId: const MarkerId('randLoc'), position: LatLng(x, y), icon: BitmapDescriptor.defaultMarker));

    emit(MapManagerState.randomLocationGenerated(
        cameraUpdate: CameraUpdate.newCameraPosition(CameraPosition(target: LatLng(x, y), zoom: 14)),
        markers: markers
      )
    );
  }
}
