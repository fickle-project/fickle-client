import 'package:flutter/material.dart';

import 'package:fickle_client/pages/home/index_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'Fickle Client',
      home: IndexPage(),
    );
  }
}
