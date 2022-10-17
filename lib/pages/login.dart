import 'package:flutter/material.dart';
import 'package:my_routing/models/user.dart';
import 'package:my_routing/routes/routes.dart';
import 'package:provider/provider.dart';

class Login extends StatefulWidget {
  const Login({Key? key}) : super(key: key);

  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  TextEditingController usernameController = TextEditingController();

  @override
  void dispose() {
    usernameController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    print('Building Login');
    return Scaffold(
      appBar: AppBar(
        title: const Text('Login'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.all(12.0),
              child: TextField(
                keyboardType: TextInputType.text,
                controller: usernameController,
                decoration: const InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: 'Please enter your username'),
              ),
            ),
            ElevatedButton(
              onPressed: () {
                context.read<User>().username = usernameController.text;
                Navigator.of(context).pushNamed(RouteManager.mainPage);
              },
              child: const Text('Submit'),
            ),
          ],
        ),
      ),
    );
  }
}
