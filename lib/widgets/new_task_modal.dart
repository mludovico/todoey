import 'package:flutter/material.dart';

class NewTaskModal extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        padding: EdgeInsets.only(
          bottom: MediaQuery.of(context).viewInsets.bottom,
        ),
        child: BottomSheet(
          backgroundColor: Colors.black54,
          onClosing: (){},
          builder: (context){
            return Container(
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  topRight: Radius.circular(20),
                  topLeft: Radius.circular(20),
                )
              ),
              padding: EdgeInsets.symmetric(horizontal: 30, vertical: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Text(
                    'Add Task',
                    style: TextStyle(
                      color: Colors.lightBlueAccent,
                      fontSize: 30,
                    ),
                    textAlign: TextAlign.center,
                  ),
                  TextField(
                    autofocus: true,
                    textAlign: TextAlign.center,
                  ),
                  FlatButton(
                    color: Colors.lightBlueAccent,
                    onPressed: (){},
                    child: Text(
                      'ADD',
                      style: TextStyle(
                        color: Colors.white
                      ),
                    ),
                  )
                ],
              ),
            );
          },
        ),
      ),
    );
  }
}
