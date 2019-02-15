import 'package:flutter/material.dart';

class Home extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Material(
      color: Colors.deepPurpleAccent,
      child: Center(
        child: Text(
          sayHello(),
          textDirection: TextDirection.ltr,
          style: TextStyle(color: Colors.white, fontSize: 32.0),
        )
      ),
    );
  }

  sayHello(){
    String greeting;
    DateTime time = DateTime.now();
    String extention = (time.hour < 12 ) ? 'AM' : 'PM';
    String minute = (time.minute < 10) ? '0' + time.minute.toString() : time.minute.toString();
    String currentTime = time.hour.toString() + ':$minute $extention';
    if(time.hour < 12){
      greeting = 'Good Morning';
    }else if(time.hour < 18 ){
      greeting = 'Good Afternoon';
    }else{
      greeting = 'Good Evening';
    }

    return 'The time is $currentTime \n\r $greeting';
    
  }

}