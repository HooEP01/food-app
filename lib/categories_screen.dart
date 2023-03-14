import 'package:flutter/material.dart';
import './models/category.dart';

import './category_item.dart';

class CategoriesScreen extends StatelessWidget {
  const CategoriesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    const DUMMY_CATEGORIES = [
      Category(
        id: 'c1',
        title: 'Italian',
        color: Colors.red,
      ),
      Category(
        id: 'c2',
        title: 'Quick & Easy',
        color: Colors.orange,
      ),
      Category(
        id: 'c3',
        title: 'Humburgers',
        color: Colors.yellow,
      ),
      Category(
        id: 'c4',
        title: 'Italian',
        color: Colors.green,
      ),
      Category(
        id: 'c5',
        title: 'Quick & Easy',
        color: Colors.blue,
      ),
      Category(
        id: 'c6',
        title: 'Humburgers',
        color: Colors.indigo,
      ),
      Category(
        id: 'c7',
        title: 'Italian',
        color: Colors.purple,
      ),
      Category(
        id: 'c8',
        title: 'Quick & Easy',
        color: Colors.purple,
      ),
      Category(
        id: 'c9',
        title: 'Humburgers',
        color: Colors.purple,
      ),
      Category(
        id: 'c10',
        title: 'Italian',
        color: Colors.purple,
      ),
      Category(
        id: 'c11',
        title: 'Quick & Easy',
        color: Colors.purple,
      ),
      Category(
        id: 'c12',
        title: 'Humburgers',
        color: Colors.purple,
      ),
    ];

    return Scaffold(
      appBar: AppBar(
        title: const Text('DeliMeal'),
      ),
      body: GridView(
        padding: const EdgeInsets.all(8),
        gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
          maxCrossAxisExtent: 200,
          childAspectRatio: 3 / 2,
          crossAxisSpacing: 20,
          mainAxisSpacing: 20,
        ),
        children: DUMMY_CATEGORIES
            .map(
              (e) => CategoryItem(
                e.id,
                e.title,
                e.color,
              ),
            )
            .toList(),
      ),
    );
  }
}
