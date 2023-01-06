import 'package:flutter/material.dart';

class FickleIssue extends StatelessWidget {
  const FickleIssue({
    super.key,
    required this.name,
    this.content,
  });

  final String name;
  final String? content;

  @override
  Widget build(BuildContext context) {
    return Card(
      child: ListTile(
        title: Text(name),
        subtitle: content != null ? Text(content!) : null,
      ),
    );
  }
}
