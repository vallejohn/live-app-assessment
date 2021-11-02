import 'dart:async';

import 'package:eigital_flutter_assessment/maps/manager/bloc/map_manager_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class GoogleMapWidget extends StatelessWidget {
  final CameraPosition initialCameraPosition;
  const GoogleMapWidget({Key? key, required this.initialCameraPosition})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    Completer<GoogleMapController> _controller = Completer();
    Set<Marker> _markers = new Set();

    return BlocBuilder<MapManagerBloc, MapManagerState>(
        builder: (context, state) {
      return Scaffold(
          appBar: AppBar(),
          body: BlocListener<MapManagerBloc, MapManagerState>(
            listener: (context, state) {
              state.when(
                  initial: () {},
                  onLocationSet: (cameraUpdate) async {
                    GoogleMapController controller = await _controller.future;
                    controller.animateCamera(cameraUpdate);
                  },
                  randomLocationGenerated: (cameraUpdate, markers) async {
                    
                    _markers = markers;

                    GoogleMapController controller = await _controller.future;
                    controller.animateCamera(cameraUpdate);
                  });
            },
            child: GoogleMap(
              myLocationEnabled: true,
              zoomControlsEnabled: false,
              initialCameraPosition: initialCameraPosition,
              markers: _markers,
              onMapCreated: (GoogleMapController googleMapController) {
                _controller.complete(googleMapController);
              },
            ),
          ),
          floatingActionButton: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              FloatingActionButton(
                heroTag: 'rndLocFAB',
                onPressed: () async {
                  context.read<MapManagerBloc>().add(const MapManagerEvent.onGenerateRadomLocation());
                },
                child: const Icon(Icons.directions),
              ),
              const SizedBox(height: 10),
              FloatingActionButton(
                heroTag: 'curLocFB',
                onPressed: () async {
                  context
                      .read<MapManagerBloc>()
                      .add(const MapManagerEvent.onCurrentLocationTapped());
                },
                child: const Icon(Icons.my_location_rounded)
              ),
            ],
          ));
    });
  }
}
