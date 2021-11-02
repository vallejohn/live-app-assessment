part of 'map_manager_bloc.dart';

@freezed
class MapManagerEvent with _$MapManagerEvent {
  const factory MapManagerEvent.started() = _Started;
  const factory MapManagerEvent.onCurrentLocationTapped() = _OnCurrentLocationTapped;
  const factory MapManagerEvent.onGenerateRadomLocation() = _OnGenerateRandomLocation;
}