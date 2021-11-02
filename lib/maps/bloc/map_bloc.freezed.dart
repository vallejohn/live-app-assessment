// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'map_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$MapEventTearOff {
  const _$MapEventTearOff();

  _Started started() {
    return const _Started();
  }

  _LoadMap loadMap() {
    return const _LoadMap();
  }

  _OnCurrentLocationTapped onCurrentLocationTapped(
      {required GoogleMapController googleMapController}) {
    return _OnCurrentLocationTapped(
      googleMapController: googleMapController,
    );
  }
}

/// @nodoc
const $MapEvent = _$MapEventTearOff();

/// @nodoc
mixin _$MapEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function() loadMap,
    required TResult Function(GoogleMapController googleMapController)
        onCurrentLocationTapped,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? loadMap,
    TResult Function(GoogleMapController googleMapController)?
        onCurrentLocationTapped,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? loadMap,
    TResult Function(GoogleMapController googleMapController)?
        onCurrentLocationTapped,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_LoadMap value) loadMap,
    required TResult Function(_OnCurrentLocationTapped value)
        onCurrentLocationTapped,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_LoadMap value)? loadMap,
    TResult Function(_OnCurrentLocationTapped value)? onCurrentLocationTapped,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_LoadMap value)? loadMap,
    TResult Function(_OnCurrentLocationTapped value)? onCurrentLocationTapped,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MapEventCopyWith<$Res> {
  factory $MapEventCopyWith(MapEvent value, $Res Function(MapEvent) then) =
      _$MapEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$MapEventCopyWithImpl<$Res> implements $MapEventCopyWith<$Res> {
  _$MapEventCopyWithImpl(this._value, this._then);

  final MapEvent _value;
  // ignore: unused_field
  final $Res Function(MapEvent) _then;
}

/// @nodoc
abstract class _$StartedCopyWith<$Res> {
  factory _$StartedCopyWith(_Started value, $Res Function(_Started) then) =
      __$StartedCopyWithImpl<$Res>;
}

/// @nodoc
class __$StartedCopyWithImpl<$Res> extends _$MapEventCopyWithImpl<$Res>
    implements _$StartedCopyWith<$Res> {
  __$StartedCopyWithImpl(_Started _value, $Res Function(_Started) _then)
      : super(_value, (v) => _then(v as _Started));

  @override
  _Started get _value => super._value as _Started;
}

/// @nodoc

class _$_Started with DiagnosticableTreeMixin implements _Started {
  const _$_Started();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'MapEvent.started()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties..add(DiagnosticsProperty('type', 'MapEvent.started'));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _Started);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function() loadMap,
    required TResult Function(GoogleMapController googleMapController)
        onCurrentLocationTapped,
  }) {
    return started();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? loadMap,
    TResult Function(GoogleMapController googleMapController)?
        onCurrentLocationTapped,
  }) {
    return started?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? loadMap,
    TResult Function(GoogleMapController googleMapController)?
        onCurrentLocationTapped,
    required TResult orElse(),
  }) {
    if (started != null) {
      return started();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_LoadMap value) loadMap,
    required TResult Function(_OnCurrentLocationTapped value)
        onCurrentLocationTapped,
  }) {
    return started(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_LoadMap value)? loadMap,
    TResult Function(_OnCurrentLocationTapped value)? onCurrentLocationTapped,
  }) {
    return started?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_LoadMap value)? loadMap,
    TResult Function(_OnCurrentLocationTapped value)? onCurrentLocationTapped,
    required TResult orElse(),
  }) {
    if (started != null) {
      return started(this);
    }
    return orElse();
  }
}

abstract class _Started implements MapEvent {
  const factory _Started() = _$_Started;
}

/// @nodoc
abstract class _$LoadMapCopyWith<$Res> {
  factory _$LoadMapCopyWith(_LoadMap value, $Res Function(_LoadMap) then) =
      __$LoadMapCopyWithImpl<$Res>;
}

/// @nodoc
class __$LoadMapCopyWithImpl<$Res> extends _$MapEventCopyWithImpl<$Res>
    implements _$LoadMapCopyWith<$Res> {
  __$LoadMapCopyWithImpl(_LoadMap _value, $Res Function(_LoadMap) _then)
      : super(_value, (v) => _then(v as _LoadMap));

  @override
  _LoadMap get _value => super._value as _LoadMap;
}

/// @nodoc

class _$_LoadMap with DiagnosticableTreeMixin implements _LoadMap {
  const _$_LoadMap();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'MapEvent.loadMap()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties..add(DiagnosticsProperty('type', 'MapEvent.loadMap'));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _LoadMap);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function() loadMap,
    required TResult Function(GoogleMapController googleMapController)
        onCurrentLocationTapped,
  }) {
    return loadMap();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? loadMap,
    TResult Function(GoogleMapController googleMapController)?
        onCurrentLocationTapped,
  }) {
    return loadMap?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? loadMap,
    TResult Function(GoogleMapController googleMapController)?
        onCurrentLocationTapped,
    required TResult orElse(),
  }) {
    if (loadMap != null) {
      return loadMap();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_LoadMap value) loadMap,
    required TResult Function(_OnCurrentLocationTapped value)
        onCurrentLocationTapped,
  }) {
    return loadMap(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_LoadMap value)? loadMap,
    TResult Function(_OnCurrentLocationTapped value)? onCurrentLocationTapped,
  }) {
    return loadMap?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_LoadMap value)? loadMap,
    TResult Function(_OnCurrentLocationTapped value)? onCurrentLocationTapped,
    required TResult orElse(),
  }) {
    if (loadMap != null) {
      return loadMap(this);
    }
    return orElse();
  }
}

abstract class _LoadMap implements MapEvent {
  const factory _LoadMap() = _$_LoadMap;
}

/// @nodoc
abstract class _$OnCurrentLocationTappedCopyWith<$Res> {
  factory _$OnCurrentLocationTappedCopyWith(_OnCurrentLocationTapped value,
          $Res Function(_OnCurrentLocationTapped) then) =
      __$OnCurrentLocationTappedCopyWithImpl<$Res>;
  $Res call({GoogleMapController googleMapController});
}

/// @nodoc
class __$OnCurrentLocationTappedCopyWithImpl<$Res>
    extends _$MapEventCopyWithImpl<$Res>
    implements _$OnCurrentLocationTappedCopyWith<$Res> {
  __$OnCurrentLocationTappedCopyWithImpl(_OnCurrentLocationTapped _value,
      $Res Function(_OnCurrentLocationTapped) _then)
      : super(_value, (v) => _then(v as _OnCurrentLocationTapped));

  @override
  _OnCurrentLocationTapped get _value =>
      super._value as _OnCurrentLocationTapped;

  @override
  $Res call({
    Object? googleMapController = freezed,
  }) {
    return _then(_OnCurrentLocationTapped(
      googleMapController: googleMapController == freezed
          ? _value.googleMapController
          : googleMapController // ignore: cast_nullable_to_non_nullable
              as GoogleMapController,
    ));
  }
}

/// @nodoc

class _$_OnCurrentLocationTapped
    with DiagnosticableTreeMixin
    implements _OnCurrentLocationTapped {
  const _$_OnCurrentLocationTapped({required this.googleMapController});

  @override
  final GoogleMapController googleMapController;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'MapEvent.onCurrentLocationTapped(googleMapController: $googleMapController)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'MapEvent.onCurrentLocationTapped'))
      ..add(DiagnosticsProperty('googleMapController', googleMapController));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _OnCurrentLocationTapped &&
            (identical(other.googleMapController, googleMapController) ||
                other.googleMapController == googleMapController));
  }

  @override
  int get hashCode => Object.hash(runtimeType, googleMapController);

  @JsonKey(ignore: true)
  @override
  _$OnCurrentLocationTappedCopyWith<_OnCurrentLocationTapped> get copyWith =>
      __$OnCurrentLocationTappedCopyWithImpl<_OnCurrentLocationTapped>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function() loadMap,
    required TResult Function(GoogleMapController googleMapController)
        onCurrentLocationTapped,
  }) {
    return onCurrentLocationTapped(googleMapController);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? loadMap,
    TResult Function(GoogleMapController googleMapController)?
        onCurrentLocationTapped,
  }) {
    return onCurrentLocationTapped?.call(googleMapController);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? loadMap,
    TResult Function(GoogleMapController googleMapController)?
        onCurrentLocationTapped,
    required TResult orElse(),
  }) {
    if (onCurrentLocationTapped != null) {
      return onCurrentLocationTapped(googleMapController);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_LoadMap value) loadMap,
    required TResult Function(_OnCurrentLocationTapped value)
        onCurrentLocationTapped,
  }) {
    return onCurrentLocationTapped(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_LoadMap value)? loadMap,
    TResult Function(_OnCurrentLocationTapped value)? onCurrentLocationTapped,
  }) {
    return onCurrentLocationTapped?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_LoadMap value)? loadMap,
    TResult Function(_OnCurrentLocationTapped value)? onCurrentLocationTapped,
    required TResult orElse(),
  }) {
    if (onCurrentLocationTapped != null) {
      return onCurrentLocationTapped(this);
    }
    return orElse();
  }
}

abstract class _OnCurrentLocationTapped implements MapEvent {
  const factory _OnCurrentLocationTapped(
          {required GoogleMapController googleMapController}) =
      _$_OnCurrentLocationTapped;

  GoogleMapController get googleMapController;
  @JsonKey(ignore: true)
  _$OnCurrentLocationTappedCopyWith<_OnCurrentLocationTapped> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
class _$MapStateTearOff {
  const _$MapStateTearOff();

  _MapLoading mapLoading() {
    return const _MapLoading();
  }

  _MapLoaded mapLoaded({required CameraPosition initialCameraPosition}) {
    return _MapLoaded(
      initialCameraPosition: initialCameraPosition,
    );
  }
}

/// @nodoc
const $MapState = _$MapStateTearOff();

/// @nodoc
mixin _$MapState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() mapLoading,
    required TResult Function(CameraPosition initialCameraPosition) mapLoaded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? mapLoading,
    TResult Function(CameraPosition initialCameraPosition)? mapLoaded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? mapLoading,
    TResult Function(CameraPosition initialCameraPosition)? mapLoaded,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_MapLoading value) mapLoading,
    required TResult Function(_MapLoaded value) mapLoaded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_MapLoading value)? mapLoading,
    TResult Function(_MapLoaded value)? mapLoaded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_MapLoading value)? mapLoading,
    TResult Function(_MapLoaded value)? mapLoaded,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MapStateCopyWith<$Res> {
  factory $MapStateCopyWith(MapState value, $Res Function(MapState) then) =
      _$MapStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$MapStateCopyWithImpl<$Res> implements $MapStateCopyWith<$Res> {
  _$MapStateCopyWithImpl(this._value, this._then);

  final MapState _value;
  // ignore: unused_field
  final $Res Function(MapState) _then;
}

/// @nodoc
abstract class _$MapLoadingCopyWith<$Res> {
  factory _$MapLoadingCopyWith(
          _MapLoading value, $Res Function(_MapLoading) then) =
      __$MapLoadingCopyWithImpl<$Res>;
}

/// @nodoc
class __$MapLoadingCopyWithImpl<$Res> extends _$MapStateCopyWithImpl<$Res>
    implements _$MapLoadingCopyWith<$Res> {
  __$MapLoadingCopyWithImpl(
      _MapLoading _value, $Res Function(_MapLoading) _then)
      : super(_value, (v) => _then(v as _MapLoading));

  @override
  _MapLoading get _value => super._value as _MapLoading;
}

/// @nodoc

class _$_MapLoading with DiagnosticableTreeMixin implements _MapLoading {
  const _$_MapLoading();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'MapState.mapLoading()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties..add(DiagnosticsProperty('type', 'MapState.mapLoading'));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _MapLoading);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() mapLoading,
    required TResult Function(CameraPosition initialCameraPosition) mapLoaded,
  }) {
    return mapLoading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? mapLoading,
    TResult Function(CameraPosition initialCameraPosition)? mapLoaded,
  }) {
    return mapLoading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? mapLoading,
    TResult Function(CameraPosition initialCameraPosition)? mapLoaded,
    required TResult orElse(),
  }) {
    if (mapLoading != null) {
      return mapLoading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_MapLoading value) mapLoading,
    required TResult Function(_MapLoaded value) mapLoaded,
  }) {
    return mapLoading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_MapLoading value)? mapLoading,
    TResult Function(_MapLoaded value)? mapLoaded,
  }) {
    return mapLoading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_MapLoading value)? mapLoading,
    TResult Function(_MapLoaded value)? mapLoaded,
    required TResult orElse(),
  }) {
    if (mapLoading != null) {
      return mapLoading(this);
    }
    return orElse();
  }
}

abstract class _MapLoading implements MapState {
  const factory _MapLoading() = _$_MapLoading;
}

/// @nodoc
abstract class _$MapLoadedCopyWith<$Res> {
  factory _$MapLoadedCopyWith(
          _MapLoaded value, $Res Function(_MapLoaded) then) =
      __$MapLoadedCopyWithImpl<$Res>;
  $Res call({CameraPosition initialCameraPosition});
}

/// @nodoc
class __$MapLoadedCopyWithImpl<$Res> extends _$MapStateCopyWithImpl<$Res>
    implements _$MapLoadedCopyWith<$Res> {
  __$MapLoadedCopyWithImpl(_MapLoaded _value, $Res Function(_MapLoaded) _then)
      : super(_value, (v) => _then(v as _MapLoaded));

  @override
  _MapLoaded get _value => super._value as _MapLoaded;

  @override
  $Res call({
    Object? initialCameraPosition = freezed,
  }) {
    return _then(_MapLoaded(
      initialCameraPosition: initialCameraPosition == freezed
          ? _value.initialCameraPosition
          : initialCameraPosition // ignore: cast_nullable_to_non_nullable
              as CameraPosition,
    ));
  }
}

/// @nodoc

class _$_MapLoaded with DiagnosticableTreeMixin implements _MapLoaded {
  const _$_MapLoaded({required this.initialCameraPosition});

  @override
  final CameraPosition initialCameraPosition;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'MapState.mapLoaded(initialCameraPosition: $initialCameraPosition)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'MapState.mapLoaded'))
      ..add(
          DiagnosticsProperty('initialCameraPosition', initialCameraPosition));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _MapLoaded &&
            (identical(other.initialCameraPosition, initialCameraPosition) ||
                other.initialCameraPosition == initialCameraPosition));
  }

  @override
  int get hashCode => Object.hash(runtimeType, initialCameraPosition);

  @JsonKey(ignore: true)
  @override
  _$MapLoadedCopyWith<_MapLoaded> get copyWith =>
      __$MapLoadedCopyWithImpl<_MapLoaded>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() mapLoading,
    required TResult Function(CameraPosition initialCameraPosition) mapLoaded,
  }) {
    return mapLoaded(initialCameraPosition);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? mapLoading,
    TResult Function(CameraPosition initialCameraPosition)? mapLoaded,
  }) {
    return mapLoaded?.call(initialCameraPosition);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? mapLoading,
    TResult Function(CameraPosition initialCameraPosition)? mapLoaded,
    required TResult orElse(),
  }) {
    if (mapLoaded != null) {
      return mapLoaded(initialCameraPosition);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_MapLoading value) mapLoading,
    required TResult Function(_MapLoaded value) mapLoaded,
  }) {
    return mapLoaded(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_MapLoading value)? mapLoading,
    TResult Function(_MapLoaded value)? mapLoaded,
  }) {
    return mapLoaded?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_MapLoading value)? mapLoading,
    TResult Function(_MapLoaded value)? mapLoaded,
    required TResult orElse(),
  }) {
    if (mapLoaded != null) {
      return mapLoaded(this);
    }
    return orElse();
  }
}

abstract class _MapLoaded implements MapState {
  const factory _MapLoaded({required CameraPosition initialCameraPosition}) =
      _$_MapLoaded;

  CameraPosition get initialCameraPosition;
  @JsonKey(ignore: true)
  _$MapLoadedCopyWith<_MapLoaded> get copyWith =>
      throw _privateConstructorUsedError;
}
