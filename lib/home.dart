import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Management System'),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            children: [
              GridView.count(
                shrinkWrap: true,
                crossAxisCount: 2,
                crossAxisSpacing: 10,
                mainAxisSpacing: 10,
                children: [
                  _buildMenuItem(context, Icons.dashboard, 'Dashboard', '/dashboard'),
                  _buildMenuItem(context, Icons.add, 'Add Sale', '/add'),
                  _buildMenuItem(context, Icons.update, 'Update Sale', '/update'),
                  _buildMenuItem(context, Icons.logout, 'Logout', '/login'),
                ],
              ),
              SizedBox(height: 50),
              Text('Nama: Wafid Adzka Haifan Mukhayyar'),
              Text('NPM: 714220011'),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildMenuItem(BuildContext context, IconData icon, String label, String route) {
    return InkWell(
      onTap: () {
        Navigator.pushNamed(context, route);
      },
      child: Card(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(icon, size: 50),
            SizedBox(height: 10),
            Text(label),
          ],
        ),
      ),
    );
  }
}
