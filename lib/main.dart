import 'package:final_advanced_mobile/providers/navigation.dart';
import 'package:final_advanced_mobile/providers/setting.dart';
import 'package:final_advanced_mobile/screens/LoginPage/LoginPage.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:final_advanced_mobile/routes/route.dart' as Route;

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (_) => NavigationProvider(),
        ),
        ChangeNotifierProvider(
          create: (_) => SettingProvider(),
        )
      ],
      child:MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
          useMaterial3: true,
        ),
        onGenerateRoute: Route.controller,
        debugShowCheckedModeBanner: false,
        home: const LoginPage(),
      )
    );
  }
}