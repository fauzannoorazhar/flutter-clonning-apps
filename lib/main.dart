import 'package:flutter/material.dart';
import 'package:flutter_clonning_apps/ui/views/home/home_page.dart';

void main() {
    runApp(MyApp());
}

class MyApp extends StatelessWidget {
    // This widget is the root of your application.
    @override
    Widget build(BuildContext context) {
        return MaterialApp(
            title: 'Gojek Clonning Apps',
            theme: ThemeData(
                primarySwatch: Colors.green,
                visualDensity: VisualDensity.adaptivePlatformDensity,
            ),
            home: HomePage(),
        );
    }
}