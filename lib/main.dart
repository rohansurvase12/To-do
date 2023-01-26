import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todeayprovider/Provider/lsit.dart';

import 'Screens/TaskScreen.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider<Lists>(
      create: (context) => Lists(),
      child: MaterialApp(
        home: TaskScreen(),
      ),
    );
  }
}
