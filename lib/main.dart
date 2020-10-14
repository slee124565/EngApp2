import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'dashboard/dashboard_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]);
//    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle.light);
    return MaterialApp(
      title: 'EngFerqoApp',
      debugShowCheckedModeBanner: false,
      theme: ThemeData.light(),
      initialRoute: DashboardPage.id,
      routes: {
        DashboardPage.id: (context) => DashboardPage(),
      },
    );
  }
}
