import 'package:flutter/material.dart';

import '../Database/categoryDummy.dart';
import '../widgets/category_item.dart';

class CategoryScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GridView(
      padding: const EdgeInsets.all(25),
      children: CL
          .map((catData) =>
              CategoryItem(catData.id, catData.title, catData.color))
          .toList(),
      //Used to setup the grid settings
      gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
          maxCrossAxisExtent: 200,
          childAspectRatio: 3 / 2,
          crossAxisSpacing: 20,
          mainAxisSpacing: 20),
    );
  }
}
