
import 'package:flutter/cupertino.dart';

import '../Widget/Tasks.dart';

class Lists with ChangeNotifier{
  List<Tasks> list = [

  ] ;

  void addTask(String task){
    list.add(Tasks(task: task));
    notifyListeners();
  }

  void updateTask(int index){
    list[index].toggle();
    notifyListeners();
  }

  void deleteTask(int index){
    list.removeAt(index);
    notifyListeners();
  }

}