import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:kinetik/pages/exercise_page.dart';

class Categories extends StatefulWidget {
  const Categories({super.key});
  static final String id = "/categories";

  @override
  State<Categories> createState() => _CategoriesState();
}

class _CategoriesState extends State<Categories> {
  @override
  Widget build(BuildContext context) {
    double? scrolledUnderElevation;

    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Legs',
          style: TextStyle(
            color: Colors.white,
          ),
        ),
        scrolledUnderElevation: scrolledUnderElevation,
        backgroundColor: const Color.fromRGBO(13, 11, 11, 1),
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          color: Colors.white,
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
      body: Stack(
        children: <Widget>[
          Container(
            decoration: const BoxDecoration(
              color: Color.fromRGBO(13, 11, 11, 1),
            ),
          ),
          Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                children: <Widget>[
                  Card(
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: <Widget>[
                        const ListTile(
                          leading: Icon(Icons.fitness_center, size: 40.0),
                          title: Text(
                            'Straight Leg Press Stance',
                            style: TextStyle(
                              fontSize: 20.0,
                            ),
                          ),
                          subtitle: Text(
                            '~ 15 minutes',
                            style: TextStyle(
                              fontSize: 15.0,
                            ),
                          ),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: <Widget>[
                            TextButton(
                              child: const Text('Press to Select'),
                              onPressed: () {
                                /* ... */
                              },
                            ),
                            const SizedBox(width: 8),
                            const SizedBox(width: 8),
                          ],
                        ),
                      ],
                    ),
                  ),
                  Card(
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: <Widget>[
                        const ListTile(
                          leading: Icon(Icons.fitness_center, size: 40.0),
                          title: Text(
                            'Squats',
                            style: TextStyle(
                              fontSize: 20.0,
                            ),
                          ),
                          subtitle: Text(
                            '~ 15 minutes',
                            style: TextStyle(
                              fontSize: 15.0,
                            ),
                          ),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: <Widget>[
                            TextButton(
                              child: const Text('Press to Select'),
                              onPressed: () {
                                Navigator.pushNamed(context, ExercisePage.id);
                                /* ... */
                              },
                            ),
                            const SizedBox(width: 8),
                            const SizedBox(width: 8),
                          ],
                        ),
                      ],
                    ),
                  ),
                  Card(
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: <Widget>[
                        const ListTile(
                          leading: Icon(Icons.fitness_center, size: 40.0),
                          title: Text(
                            'Hip Abductors',
                            style: TextStyle(
                              fontSize: 20.0,
                            ),
                          ),
                          subtitle: Text(
                            '~ 15 minutes',
                            style: TextStyle(
                              fontSize: 15.0,
                            ),
                          ),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: <Widget>[
                            TextButton(
                              child: const Text('Press to Select'),
                              onPressed: () {
                                /* ... */
                              },
                            ),
                            const SizedBox(width: 8),
                            const SizedBox(width: 8),
                          ],
                        ),
                      ],
                    ),
                  ),
                  Card(
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: <Widget>[
                        const ListTile(
                          leading: Icon(Icons.fitness_center, size: 40.0),
                          title: Text(
                            'Calf Raises',
                            style: TextStyle(
                              fontSize: 20.0,
                            ),
                          ),
                          subtitle: Text(
                            '~ 15 minutes',
                            style: TextStyle(
                              fontSize: 15.0,
                            ),
                          ),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: <Widget>[
                            TextButton(
                              child: const Text('Press to Select'),
                              onPressed: () {
                                /* ... */
                              },
                            ),
                            const SizedBox(width: 8),
                            const SizedBox(width: 8),
                          ],
                        ),
                      ],
                    ),
                  ),
                  Card(
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: <Widget>[
                        const ListTile(
                          leading: Icon(Icons.fitness_center, size: 40.0),
                          title: Text(
                            'Hip Adductors',
                            style: TextStyle(
                              fontSize: 20.0,
                            ),
                          ),
                          subtitle: Text(
                            '~ 15 minutes',
                            style: TextStyle(
                              fontSize: 15.0,
                            ),
                          ),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: <Widget>[
                            TextButton(
                              child: const Text('Press to Select'),
                              onPressed: () {
                                /* ... */
                              },
                            ),
                            const SizedBox(width: 8),
                            const SizedBox(width: 8),
                          ],
                        ),
                      ],
                    ),
                  ),
                ],
              ))
        ],
        // ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Color.fromRGBO(248, 248, 250, 1),
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'Profile',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.settings),
            label: 'Settings',
          ),
        ],
        // currentIndex: _selectedIndex,
        selectedItemColor: Color.fromARGB(255, 60, 43, 123),
        // onTap: _onItemTapped,
      ),
    );
  }
}
