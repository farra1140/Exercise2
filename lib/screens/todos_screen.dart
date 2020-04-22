import 'package:flutter/material.dart';



import '../models/task.dart';
import '../models/todo.dart';
import 'tasks_screen.dart';

class TodoListScreen extends StatefulWidget {
  
final Todo _evaluator;
final List _data;

TodoListScreen(this._evaluator,this._data);






  
  @override
  _TodoListScreenState createState() => _TodoListScreenState();
}

class _TodoListScreenState extends State<TodoListScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('My To Do List'),
      ),
      body: ListView.separated(
        itemCount: 4,
        separatorBuilder: (context, index) => Divider(
          color: Colors.blueGrey,
        ),
        itemBuilder: (context, index) => ListTile(
          title: Text(widget._data[index].title.title),
          subtitle: Text(widget._data[index].title.items),
          trailing: CircleAvatar(
            child: Text(
              '100',
              style: TextStyle( color: Colors.white),
            )
          ),
        ),
      ),
    );
  }
}
