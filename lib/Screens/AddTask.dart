
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todeayprovider/Provider/lsit.dart';
import 'package:todeayprovider/Widget/Tasks.dart';
class AddTask extends StatefulWidget {
  const AddTask({Key? key}) : super(key: key);

  @override
  State<AddTask> createState() => _AddTaskState();
}

class _AddTaskState extends State<AddTask>{
  String t = '';
  @override
  Widget build(BuildContext context) {
     return Consumer <Lists>(
       builder: (context,provider,child){
         return Container(
           child: Column(
             children: [
               Text('Enter Task'),
               Padding(padding : EdgeInsets.symmetric(horizontal: 25),child: TextField(
                 onChanged: (val){
                   t = val;
                 },
               )),
               SizedBox(height: 10,),
               ElevatedButton(onPressed: (){
                  provider.addTask(t);
                  Navigator.pop(context);
               }, child: Text('Add')),
             ],
           ),
         );
       }

     );
  }
}
