import 'package:flutter/material.dart';
import 'package:tugasflutter/home.dart';
import 'package:tugasflutter/add_sale.dart';
import 'package:tugasflutter/dashboard.dart';
import 'package:tugasflutter/login.dart';
import 'package:tugasflutter/update_sale.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Management System',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      initialRoute: '/',
      routes: {
        '/': (context) => HomePage(),
        '/dashboard': (context) => DashboardPage(),
        '/add': (context) => AddSalePage(),
        '/update': (context) => UpdateSalePage(),
        '/login': (context) => LoginPage(),
      },
    );
  }
}
