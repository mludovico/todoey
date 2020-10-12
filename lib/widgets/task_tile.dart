import 'package:flutter/material.dart';

class TaskTile extends StatelessWidget {

  final bool checked;
  final String title;
  final Function (bool checked) onChanged;
  TaskTile({this.title, this.checked, this.onChanged});

  @override
  Widget build(BuildContext context) {
    return CheckboxListTile(
      title: Text(
        title,
        style: TextStyle(
          decoration: checked ? TextDecoration.lineThrough : TextDecoration.none
        ),
      ),
      value: checked,
      onChanged: onChanged,
    );
  }
}
