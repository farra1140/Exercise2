// Define the class Todo here. The attributes are given. Complete the rest.

import 'package:exercise2/models/task.dart';

import 'task.dart';
import 'task.dart';

class Todo {
  Task title;
  List<Task> items;

  Todo(this.title,this.items);
  Todo.copy(Todo from)  
  : this(Task.copy(from.title), [ ...from.items]);


}
