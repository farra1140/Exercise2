// Define the class Todo here. The attributes are given. Complete the rest.

import 'package:exercise2/models/task.dart';

import 'task.dart';



class Todo {
  Task title;
  List<int> items;

  Todo(this.title,this.items);
  Todo.copy(Todo from)  
  : this(Task.copy(from.title), [ ...from.items]);

double get percent =>
(items.reduce( (sum,item) => sum + item) / 20.0) * 100.0;


}
