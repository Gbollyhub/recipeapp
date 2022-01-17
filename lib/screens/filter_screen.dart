import 'package:flutter/material.dart';

import '../widgets/drawer.dart';

class FilterScreen extends StatefulWidget {
  static const routeName = '/filter-screen';

  @override
  _FilterScreenState createState() => _FilterScreenState();
}

class _FilterScreenState extends State<FilterScreen> {
  bool GlutenFree = false;
  bool Vegan = false;
  bool Vegetarian = false;
  bool LactoseFree = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Your Filters'),
        ),
        drawer: MainDrawer(),
        body: Column(
          children: [
            Container(
              padding: EdgeInsets.all(20),
              child: Text(
                'Adjust your meal selections',
                style: Theme.of(context).textTheme.title,
              ),
            ),
            Expanded(
                child: ListView(
              children: [
                SwitchListTile(
                    title: Text('Only include gluten free meals'),
                    value: GlutenFree,
                    onChanged: (val) {
                      setState(() {
                        GlutenFree = val;
                      });
                    }),
                SwitchListTile(
                    title: Text('Lactose Free'),
                    value: LactoseFree,
                    onChanged: (val) {
                      setState(() {
                        LactoseFree = val;
                      });
                    }),
              ],
            ))
          ],
        ));
  }
}
