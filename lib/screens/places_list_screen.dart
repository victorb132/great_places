import 'package:flutter/material.dart';
import 'package:great_places/providers/great_places.dart';
import 'package:great_places/utils/app.routes.dart';
import 'package:provider/provider.dart';

class PlacesListScreen extends StatelessWidget {
  const PlacesListScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Meus lugares'),
          actions: [
            IconButton(
              onPressed: () {
                Navigator.of(context).pushNamed(AppRoutes.placeForm);
              },
              icon: const Icon(Icons.add),
            ),
          ],
        ),
        body: Consumer<GreatPlaces>(
          child: const Center(
            child: Text('Nenhum Local cadastrado'),
          ),
          builder: (ctx, greatPlaces, child) => greatPlaces.itemsCount == 0
              ? child!
              : ListView.builder(
                  itemBuilder: (ctx, i) => ListTile(
                    leading: CircleAvatar(
                      backgroundImage: FileImage(
                        greatPlaces.itemByIndex(i).image,
                      ),
                    ),
                    title: Text(greatPlaces.itemByIndex(i).title),
                    onTap: () {},
                  ),
                  itemCount: greatPlaces.itemsCount,
                ),
        ));
  }
}
