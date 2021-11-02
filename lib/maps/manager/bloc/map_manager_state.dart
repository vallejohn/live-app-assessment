part of 'map_manager_bloc.dart';

@freezed
class MapManagerState with _$MapManagerState {
  const factory MapManagerState.initial() = _Initial;

  const factory MapManagerState.onLocationSet({required CameraUpdate cameraUpdate}) = _OnLocationSet;

  const factory MapManagerState.randomLocationGenerated({
    required CameraUpdate cameraUpdate,
    required Set<Marker> markers,
    }) = _RandomLocationGenerated;
}
