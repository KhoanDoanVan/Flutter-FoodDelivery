import 'package:flutter/material.dart';
import 'package:flutter_fooddelivery/auth/login_or_register.dart';
import 'package:flutter_fooddelivery/models/restaurant.dart';
import 'package:flutter_fooddelivery/themes/theme_provider.dart';
import 'package:provider/provider.dart';


void main() {

  WidgetsFlutterBinding.ensureInitialized();

  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (context) => ThemeProvider()),
        ChangeNotifierProvider(create: (context) => Restaurant())
      ],
      child: const MyApp(),
    )
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: const LoginOrRegister(),
      theme: Provider.of<ThemeProvider>(context).themeData,
    );
  }
}
