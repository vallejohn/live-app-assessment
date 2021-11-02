import 'dart:async';

import 'package:eigital_flutter_assessment/maps/bloc/map_bloc.dart';
import 'package:eigital_flutter_assessment/maps/widgets/google_map_widget.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class GoogleMapView extends StatelessWidget {
  const GoogleMapView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Completer<GoogleMapController> _controller = Completer();

    return BlocBuilder<MapBloc, MapState>(builder: (context, state) {
      return state.when(
          mapLoading: () => const Scaffold(
            body: Center(
              child: CircularProgressIndicator(),
            ),
          ),
          mapLoaded: (initialCameraPosition) => GoogleMapWidget(initialCameraPosition: initialCameraPosition),
        );
        /* floatingActionButton: FloatingActionButton(
          onPressed: () async {
            context.read<MapBloc>().add(MapEvent.onCurrentLocationTapped(
              googleMapController: await _controller.future));
          },
          child: const Icon(Icons.location_pin),
        ), */

    });
  }
}
