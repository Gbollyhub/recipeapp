import 'package:flutter/material.dart';

import '../Database/mealDummy.dart';
import '../widgets/meal_item.dart';

class MealScreen extends StatefulWidget {
  static const routeName = '/meals';

  @override
  _MealScreenState createState() => _MealScreenState();
}

class _MealScreenState extends State<MealScreen> {
  @override
  Widget build(BuildContext context) {
    final routeArgs =
        ModalRoute.of(context).settings.arguments as Map<String, String>;

    final catId = routeArgs['id'];
    final catTitle = routeArgs['title'];

    final categoryMeals = DUMMY_MEALS.where((meal) {
      return meal.categories.contains(catId);
    }).toList();

    return Scaffold(
      appBar: AppBar(
        title: Text(catTitle),
      ),
      body: Center(
        child: ListView.builder(
          itemBuilder: (ctx, index) {
            return MealsItem(
                id: categoryMeals[index].id,
                title: categoryMeals[index].title,
                imgUrl: categoryMeals[index].imageUrl,
                duration: categoryMeals[index].duration,
                affordability: categoryMeals[index].affordability,
                complexity: categoryMeals[index].complexity);
          },
          itemCount: categoryMeals.length,
        ),
      ),
    );
  }
}
