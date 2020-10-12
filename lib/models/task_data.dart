import 'dart:collection';

import 'package:flutter/foundation.dart';
import 'package:todoey/models/task.dart';

class TaskData extends ChangeNotifier{
  List<Task> _list = [];

  int get taskCount => _list.length;
  UnmodifiableListView<Task> get getList => UnmodifiableListView(_list);

  void addTask(Task newTask){
    final task = newTask;
    _list.add(task);
    orderList();
    notifyListeners();
  }

  void updateTask(Task task){
    task.toggleIsDone(null);
    orderList();
    notifyListeners();
  }

  void deleteTask(Task task){
    _list.remove(task);
    orderList();
    notifyListeners();
  }

  void orderList(){
    _list.sort((a, b) => a.isDone ? 1 : -1);
  }
}