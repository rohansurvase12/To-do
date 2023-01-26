import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todeayprovider/Provider/lsit.dart';
import 'package:todeayprovider/Screens/AddTask.dart';

import '../Widget/TaskList.dart';

class TaskScreen extends StatefulWidget {
  const TaskScreen({Key? key}) : super(key: key);

  @override
  State<TaskScreen> createState() => _TaskScreenState();
}

class _TaskScreenState extends State<TaskScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
        onPressed: (){
          showModalBottomSheet<void>(
            context: context,
            builder: (BuildContext context) {
              return AddTask();
            },
          );
        },
      ),
      body: Column(
        children: [
          Container(
           padding: EdgeInsets.all(50),
            color: Colors.lightBlueAccent,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              
              children: [
                Text('Todo' ,style: TextStyle(color: Colors.white, fontSize: 50 ),),
                Text('${Provider.of<Lists>(context).list.length} Tasks' ,style: TextStyle(color: Colors.white,fontSize: 15), ),
              ],
            ),
          ),
          Container(
            color: Colors.amber,
            child: Column(
              children: [
                TaskList(),
              ],
            ),
          )
        ],
      ),
    );
  }
}
