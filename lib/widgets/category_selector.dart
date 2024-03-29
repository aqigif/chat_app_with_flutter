import 'package:flutter/material.dart';

class CategorySelector extends StatefulWidget {
  @override
  _CategorySelector createState() => _CategorySelector();
}

class _CategorySelector extends State<CategorySelector> {
  int selectedIndex = 0;
  final List<String> categories = ['Message', 'Online', 'Group', 'Request'];
  @override
  Widget build(BuildContext context) {
    return Container(
        height: 80.0,
        color: Theme.of(context).primaryColor,
        child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: categories.length,
          itemBuilder: (BuildContext context, int index) {
            return GestureDetector(
                onTap: () {
                  setState(() {
                    selectedIndex = index;
                  });
                },
                child: Padding(
                  padding:
                      EdgeInsets.symmetric(horizontal: 20.0, vertical: 25.0),
                  child: Text(
                    categories[index],
                    style: TextStyle(
                        color: index == selectedIndex
                            ? Colors.white
                            : Colors.white60,
                        fontSize: 20.0,
                        fontWeight: FontWeight.bold,
                        letterSpacing: 1.2),
                  ),
                ));
          },
        ));
  }
}
