import 'package:flutter/material.dart';

class TaskTile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return CheckboxListTile(
      title: Text(
        'Task #1',
      ),
      value: false,
      onChanged: (value){},
    );
  }
}
