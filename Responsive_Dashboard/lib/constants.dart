import 'package:flutter/material.dart';

var myDefaultBackground = Colors.grey[300];

var myAppBar = AppBar(
  backgroundColor: Colors.grey[900],
  title: Text(
    'CBS Task System',
    style: TextStyle(
      fontWeight: FontWeight.bold,
    ),
  ),
);

var myDrawer = Drawer(
  backgroundColor: Colors.grey[300],
  child: Column(children: [
    ListTile(
      leading: Icon(Icons.home),
      title: Text('D A S H B O A R D'),
    ),
    ListTile(
      leading: Icon(Icons.settings),
      title: Text('T A S K S'),
    ),
    ListTile(
      leading: Icon(Icons.person),
      title: Text('P R O F I L E'),
    ),
    ListTile(
      leading: Icon(Icons.logout),
      title: Text('L O G O U T'),
    )


  ],),
);