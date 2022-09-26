import 'package:amazonclone/features/auth/screens/auth_screen.dart';
import 'package:flutter/material.dart';
import 'package:amazonclone/constants/global_Variables.dart';
import 'package:amazonclone/router.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Amazon Clone',
      theme: ThemeData(
        scaffoldBackgroundColor: GlobalVariables.backgroundColor,
        colorScheme: const ColorScheme.light(
          primary: GlobalVariables.secondaryColor,
        ),
        appBarTheme: const AppBarTheme(
          elevation: 0,
          iconTheme: IconThemeData(color: Colors.black),

        ),
      ),
      onGenerateRoute: (settings) => generateRoute(settings),
      home:  Scaffold(
        appBar: AppBar(
          title: const Text('Amazon Clone'),
        ),
        body: Column(
          children: [
            const Center(
              child: Text('Home'),
            ),
            Builder(
              builder: (context) {
                return ElevatedButton(
                  onPressed: () {
                    Navigator.pushNamed(context, AuthScreen.routeName);
                  },
                  child: const Text('Submit'),
                );
              }
            ),
          ],
        ),

      ),

    );
  }
}
