import 'package:flutter/material.dart';
import '/models/category.dart';

import '/widgets/category_item.dart';

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
        title: 'German',
        color: Colors.green,
      ),
      Category(
        id: 'c5',
        title: 'Light & Lovely',
        color: Colors.blue,
      ),
      Category(
        id: 'c6',
        title: 'Exotic',
        color: Colors.indigo,
      ),
      Category(
        id: 'c7',
        title: 'Breakfast',
        color: Colors.purple,
      ),
      Category(
        id: 'c8',
        title: 'Asian',
        color: Colors.purple,
      ),
      Category(
        id: 'c9',
        title: 'Franch',
        color: Colors.purple,
      ),
      Category(
        id: 'c10',
        title: 'Summer',
        color: Colors.purple,
      ),
    ];

    return GridView(
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
    );
  }
}
