import 'package:eigital_flutter_assessment/calculator/calculator_view.dart';
import 'package:eigital_flutter_assessment/maps/google_map_view.dart';
import 'package:eigital_flutter_assessment/news/news_view.dart';
import 'package:flutter/material.dart';

class HomeView extends StatelessWidget {
  const HomeView({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Home'),),
      body: ListView(
        children: [
          ListTile(
            title: const Text('News API'),
            onTap: () => Navigator.push(context, MaterialPageRoute(builder: (context) => const NewsView())),
          ),
          ListTile(
            title: const Text('Google Maps'),
            onTap: () => Navigator.push(context, MaterialPageRoute(builder: (context) => const GoogleMapView())),
          ),
          ListTile(
            title: const Text('Calculator'),
            onTap: () => Navigator.push(context, MaterialPageRoute(builder: (context) => const CalculatorView())),
          ),
        ],
      ),
    );
  }
}