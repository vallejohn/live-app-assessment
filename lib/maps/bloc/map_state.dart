part of 'map_bloc.dart';

@freezed
abstract class MapState with _$MapState {
  const factory MapState.mapLoading() = _MapLoading;

  const factory MapState.mapLoaded({
    required CameraPosition initialCameraPosition
  }) = _MapLoaded;

}
