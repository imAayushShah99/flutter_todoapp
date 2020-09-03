import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_todoapp/models/task_data.dart';
import 'package:provider/provider.dart';

class AddTaskScreen extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    String typedValue;
    return Container(
      color: Color(0xFF757575),
      child: Container(
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(
            topRight: Radius.circular(20),
            topLeft: Radius.circular(20),
          ),
        ),
        child: Padding(
          padding: EdgeInsets.all(20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Text(
                'Add Task',
              style: TextStyle(
                color: Colors.lightBlueAccent,
                fontSize:30,
                fontWeight: FontWeight.w500
              ),
              ),
              TextField(
                autocorrect: true,
                textAlign: TextAlign.center,
                onChanged: (value){
                  typedValue = value;
                },
              ),
              FlatButton(
                child: Text('ADD'),
                 color: Colors.lightBlueAccent,
                onPressed: (){
                  Provider.of<TaskData>(context, listen: false).addTask(typedValue);
                  Navigator.pop(context);
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
