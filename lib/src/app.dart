import 'package:easy_learn/src/user/ui/screens/user_login.dart';
import 'package:flutter/material.dart';

class App extends StatelessWidget {
  const App({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
        title: 'Easy Learn',
        theme: ThemeData(fontFamily: 'Rockwell'),
        debugShowCheckedModeBanner: false,
        home: const UserLogin());
  }
}

// TODO: implement scrollscaffold and router in app, with responsive desing
// type input password, text 
// responsive image and version in bottom screen login
