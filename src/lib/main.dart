import 'package:flutter/material.dart';
import 'package:shop_app/screen/home_page.dart';
import 'package:shop_app/screen/size_config.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        SizeConfig().init(constraints);
        return MaterialApp(
          debugShowCheckedModeBanner: false,
          title: "Shop app",
          theme: ThemeData(
            backgroundColor: Colors.white,
          ),
          home: HomePage(),
        );
      },
    );
  }
}
