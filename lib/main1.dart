import 'package:flutter/material.dart';
import 'package:my_routing/models/settings_data.dart';
import 'package:my_routing/models/user.dart';
import 'package:my_routing/routes/routes.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    print('Building MyApp');
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (context) => User(),
        ),
        ChangeNotifierProvider(
          create: (context) => SettingsData(),
        ),
      ],
      builder: (context, child) {
        return MaterialApp(
          initialRoute: RouteManager.loginPage,
          onGenerateRoute: RouteManager.generateRoute,
        );
      },
    );
  }
}
