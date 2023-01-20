import 'package:flutter/material.dart';

import 'package:fickle_client/components/_components.dart';

class FickleColumn extends StatelessWidget {
  const FickleColumn({
    super.key,
    required this.name,
    required this.color,
    this.issues = const [],
  });

  final String name;
  final Color color;
  final List<FickleIssue> issues;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Card(
          child: ListTile(
            title: Text(name),
            tileColor: color,
          ),
        ),
        ...issues
      ],
    );
  }
}
