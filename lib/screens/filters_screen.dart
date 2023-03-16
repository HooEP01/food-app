import 'package:flutter/material.dart';

class FiltersScreen extends StatelessWidget {
  const FiltersScreen({super.key});
  static String routeName = '/filter-meal';
  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Text('Filter the meal'),
    );
  }
}
