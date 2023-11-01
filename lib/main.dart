import 'package:flutter/material.dart';
import 'package:great_places/screens/place_from_screen.dart';
import 'package:great_places/screens/places_list_screen.dart';
import 'package:great_places/utils/app.routes.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Great Places',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.indigo),
        hintColor: Colors.amber,
        useMaterial3: true,
      ),
      debugShowCheckedModeBanner: false,
      home: const PlacesListScreen(),
      routes: {
        AppRoutes.placeForm: (ctx) => const PlaceFormScreen(),
      },
    );
  }
}
