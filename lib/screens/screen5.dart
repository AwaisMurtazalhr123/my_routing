// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:my_routing/routes.dart';

class Screen5 extends StatefulWidget {
  final String name;
  const Screen5({
    Key? key,
    required this.name,
  }) : super(key: key);

  @override
  State<Screen5> createState() => _Screen5State();
}

class _Screen5State extends State<Screen5> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
          child: ElevatedButton(
              onPressed: () {
                Navigator.of(context).pushNamed(MyRoutes.homePage);
              },
              child:
                  Text('Hi ${widget.name} go back to homrpage from Screen 5'))),
    );
  }
}
