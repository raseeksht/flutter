

import 'package:flutter/material.dart';

class Login extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return Scaffold(
      backgroundColor: Colors.blue.withOpacity(0.3),
      body: Center(
        child: Container(
          width: MediaQuery.of(context).size.width/1.5,
          height: MediaQuery.of(context).size.height/1.5,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.all(Radius.circular(20)),

          ),
          child: LayoutBuilder(
            builder: (BuildContext context,BoxConstraints constraints){
              return Wrap(
                children: [
                  FractionallySizedBox(
                    widthFactor: 0.5,
                    child: Text("hh left"),
                  ),
                  FractionallySizedBox(
                    widthFactor: 0.5,
                    child: Text("right"),
                  )
                ],
              );
            },
          )

        ),
      ),
    );
  }
}