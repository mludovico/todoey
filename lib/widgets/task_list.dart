import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todoey/models/task.dart';
import 'package:todoey/models/task_data.dart';
import 'package:todoey/widgets/task_tile.dart';

class TaskList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Consumer<TaskData>(
      builder: (context, taskData, child){
        return ListView(
          children: [
            for(Task task in taskData.getList)
              GestureDetector(
                child: TaskTile(
                  title: task.name,
                  checked: task.isDone,
                  onChanged: (checked){
                    taskData.updateTask(task);
                  },
                ),
                onLongPress: (){
                  taskData.deleteTask(task);
                },
              ),
          ]
        );
      },
    );
  }
}
