

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
                    child: Container(
                      height: constraints.maxHeight,
                      width: constraints.maxWidth,
                      decoration: BoxDecoration(color: Colors.blueAccent.withOpacity(0.3),borderRadius: BorderRadius.only(topLeft: Radius.circular(20),bottomLeft: Radius.circular(20))),
                      child: Center(
                        child: Image.network("https://i.pinimg.com/originals/23/fc/e5/23fce59456f04047a434a5719cd914d9.jpg",height: constraints.maxHeight/2,),
                      ),
                    ),
                  ),
                  FractionallySizedBox(
                    widthFactor: 0.5,
                    child: Container(
                      // padding: EdgeInsets.all(10),
                      margin: EdgeInsets.only(top: 70,left: 20,right: 20),
                      height: constraints.maxHeight / 1.3,
                      width: constraints.maxWidth,
                      decoration: BoxDecoration(color: Colors.greenAccent.withOpacity(0.3)),
                      child: Center(
                        // child: Image.network("src"),
                      ),
                    ),
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