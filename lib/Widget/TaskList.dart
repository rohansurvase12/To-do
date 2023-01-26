import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../Provider/lsit.dart';
import 'Tasks.dart';
class TaskList extends StatefulWidget {
  const TaskList({Key? key}) : super(key: key);

  @override
  State<TaskList> createState() => _TaskListState();
}

class _TaskListState extends State<TaskList> {

  @override
  Widget build(BuildContext context) {
    return Consumer<Lists> (
      builder: (context,provider,child){
        return ListView.builder(

            scrollDirection: Axis.vertical,
            shrinkWrap: true,
            itemCount: provider.list.length,
            itemBuilder: ( context, int index){
              return ListTile(

                title: Text(provider.list[index].task,
                  style: TextStyle(decoration:  provider.list[index].isdone? TextDecoration.lineThrough : null) ,),
                trailing: Checkbox(
                  value: provider.list[index].isdone,
                  onChanged: (bool? newvalue) {
                    provider.updateTask(index);
                  },

                ),
                onLongPress: (){
                    provider.deleteTask(index);
                },
              );
            }
        );
      }
    );
  }
}
