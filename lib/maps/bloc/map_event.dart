part of 'map_bloc.dart';

@freezed
class MapEvent with _$MapEvent {
  
  const factory MapEvent.started() = _Started;

  const factory MapEvent.loadMap() = _LoadMap;

  const factory MapEvent.onCurrentLocationTapped({
    required GoogleMapController googleMapController
  }) = _OnCurrentLocationTapped;
}
