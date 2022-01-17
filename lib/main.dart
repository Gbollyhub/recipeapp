import 'package:flutter/material.dart';

import 'screens/bottomTabScreen.dart';
import 'screens/category_screen.dart';
import 'screens/detail_screen.dart';
import 'screens/filter_screen.dart';
import 'screens/meal_screen.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'DeliMeals',
      theme: ThemeData(
        primarySwatch: Colors.pink,
        accentColor: Colors.amber,
        canvasColor: Color(0xff1c1c1c),
        fontFamily: 'Poppins',
        textTheme: ThemeData.light().textTheme.copyWith(
            body1: TextStyle(color: Colors.black),
            body2: TextStyle(color: Colors.grey),
            title: TextStyle(color: Colors.white, fontSize: 24)),
      ),
      // home: CategoryScreen(),
      initialRoute: '/',
      routes: {
        '/': (ctx) => BottomTabsScreen(),
        MealScreen.routeName: (ctx) => MealScreen(),
        DetailScreen.routeName: (ctx) => DetailScreen(),
        FilterScreen.routeName: (ctx) => FilterScreen()
      },
      //redirect if route isnt correct
      onGenerateRoute: (settings) {
        print(settings.arguments);
        return MaterialPageRoute(builder: (ctx) => CategoryScreen());
      },
      //404 Screen
      onUnknownRoute: (settings) {
        return MaterialPageRoute(builder: (ctx) => CategoryScreen());
      },
    );
  }
}
