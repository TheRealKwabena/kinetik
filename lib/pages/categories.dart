import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class Categories extends StatelessWidget {
  const Categories({super.key});

  @override
  Widget build(BuildContext context) {
    double? scrolledUnderElevation;

    return Scaffold(
      appBar: AppBar(
        title: const Text('Legs'),
        scrolledUnderElevation: scrolledUnderElevation,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
      body:  Padding(
        padding: EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Card(
              child: Column(
              mainAxisSize: MainAxisSize.min,
              children: <Widget>[
              const ListTile(
                leading: Icon(Icons.fitness_center,
                size: 40.0),
                title: Text('Straight Leg Press Stance'),
                subtitle: Text('~ 15 minutes'),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: <Widget>[
                  TextButton(
                    child: const Text('Press to Select'),
                    onPressed: () {/* ... */},
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
                leading: Icon(Icons.fitness_center,
                size: 40.0),
                title: Text('Squats'),
                subtitle: Text('~ 15 minutes'),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: <Widget>[
                  TextButton(
                    child: const Text('Press to Select'),
                    onPressed: () {/* ... */},
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
                leading: Icon(Icons.fitness_center,
                size: 40.0),
                title: Text('Hip Abductors'),
                subtitle: Text('~ 15 minutes'),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: <Widget>[
                  TextButton(
                    child: const Text('Press to Select'),
                    onPressed: () {/* ... */},
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
                leading: Icon(Icons.fitness_center,
                size: 40.0),
                title: Text('Calf raises'),
                subtitle: Text('~ 15 minutes'),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: <Widget>[
                  TextButton(
                    child: const Text('Press to Select'),
                    onPressed: () {/* ... */},
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
                leading: Icon(Icons.fitness_center,
                size: 40.0),
                title: Text('Hip Adductors'),
                subtitle: Text('~ 15 minutes'),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: <Widget>[
                  TextButton(
                    child: const Text('Press to Select'),
                    onPressed: () {/* ... */},
                  ),
                  const SizedBox(width: 8),
                  
                  const SizedBox(width: 8),
                ],
              ),
          ],
        ),
              
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomAppBar(
        shape: const CircularNotchedRectangle(),
        child: Container(height: 50.0),
      ),
    );
  }
}
