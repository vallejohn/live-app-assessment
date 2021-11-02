import 'package:bloc/bloc.dart';
import 'package:eigital_flutter_assessment/services/google_map_service.dart';
import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

part 'map_event.dart';
part 'map_state.dart';
part 'map_bloc.freezed.dart';

class MapBloc extends Bloc<MapEvent, MapState> {
  final GoogleMapService _googleMapService;

  MapBloc({required GoogleMapService googleMapService})
      : _googleMapService = googleMapService,
        super(const _MapLoading()) {
    on<_LoadMap>(_onLoadMap);
    on<_OnCurrentLocationTapped>(_onCurrentLocationTapped);
  }

  Future<void> _onLoadMap(_LoadMap event, Emitter<MapState> emit) async{
    emit(MapState.mapLoaded(
        initialCameraPosition: await _googleMapService.getCameraPosition()));
  }
  
  Future<void> _onCurrentLocationTapped(_OnCurrentLocationTapped event, Emitter<MapState> emit) async{
    GoogleMapController controller = event.googleMapController;
    controller.animateCamera(CameraUpdate.newCameraPosition(await _googleMapService.getCameraPosition()));      
  }
}
