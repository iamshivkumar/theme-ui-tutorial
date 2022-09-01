import 'package:flutter/material.dart';

import '../../utils/labels.dart';


class TaskCard extends StatelessWidget {
  const TaskCard({super.key, required this.e});

  final MapEntry e;
  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final scheme = theme.colorScheme;
    final style = theme.textTheme;
    return Container(
      decoration: BoxDecoration(
        color: e.key == Labels.addTask ? null : scheme.surface,
        borderRadius: BorderRadius.circular(16),
      ),
      margin: e.key == Labels.addTask? null: const EdgeInsets.all(8),
      padding:  EdgeInsets.all(e.key == Labels.addTask?14:16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Material(
            borderRadius: BorderRadius.circular(8),
            color: e.key == Labels.addTask
                ? scheme.primaryContainer
                : scheme.surfaceVariant,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
              child: Text(
                e.key,
                style: TextStyle(fontSize: 12, fontWeight: FontWeight.bold),
              ),
            ),
          ),
          SizedBox(height: 16),
          Text(e.value),
        ],
      ),
    );
  }
}
