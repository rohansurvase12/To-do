class Tasks{
   String task;
  bool isdone;
  Tasks({required this.task , this.isdone = false});

  void toggle(){
    isdone = !isdone;
  }
}