import 'package:flutter/material.dart';
import 'package:my_routing/routes.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Padding(
          padding: const EdgeInsets.all(10.0),
          child: ElevatedButton(
            child: const Text('Move to Screen 1'),
            onPressed: () {
              Navigator.of(context).pushNamed(MyRoutes.screen1);
            },
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(10.0),
          child: ElevatedButton(
            child: const Text('Move to Screen 2'),
            onPressed: () {
              Navigator.of(context).pushNamed(MyRoutes.screen2);
            },
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(10.0),
          child: ElevatedButton(
            child: const Text('Move to Screen 3'),
            onPressed: () {
              Navigator.of(context).pushNamed(MyRoutes.screen3);
            },
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(10.0),
          child: ElevatedButton(
            child: const Text('Move to Screen 4'),
            onPressed: () {
              Navigator.of(context).pushNamed(MyRoutes.screen4);
            },
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(10.0),
          child: ElevatedButton(
            child: const Text('Move to Screen 5'),
            onPressed: () async {
              var result = await Navigator.of(context)
                  .pushNamed(MyRoutes.screen5, arguments: {"name": "Ali"});
            },
          ),
        ),
      ],
    ));
  }
}
