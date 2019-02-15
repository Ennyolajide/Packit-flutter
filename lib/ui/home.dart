import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
        child: Container(
            alignment: Alignment.center,
            color: Colors.deepOrangeAccent,
            padding: EdgeInsets.only(top:20, left: 10,right :10),
            child: 
            Column(
              children: <Widget>[
                Row(
                  children: <Widget>[
                    Expanded(
                      child: Text(
                        'Banks',
                        textDirection: TextDirection.ltr,
                        style: TextStyle(
                          fontSize: 30.0,
                          color: Colors.white,
                          decoration: TextDecoration.none,
                          fontFamily: 'Oxygen',
                          fontWeight: FontWeight.w200,
                          fontStyle: FontStyle.normal,
                        ),
                      ),
                    ),
                    Expanded(
                      child: Text(
                        'Gtbank, Access, Zenith',
                        textDirection: TextDirection.ltr,
                        style: TextStyle(
                          fontSize: 20.0,
                          color: Colors.white,
                          decoration: TextDecoration.none,
                          fontFamily: 'Oxygen',
                          fontWeight: FontWeight.w200,
                          fontStyle: FontStyle.italic,
                        ),
                      ),
                    )
                  ],
                ),
                Row(
                  children: <Widget>[
                    Expanded(
                      child: Text(
                        'Schools',
                        textDirection: TextDirection.ltr,
                        style: TextStyle(
                          fontSize: 30.0,
                          color: Colors.white,
                          decoration: TextDecoration.none,
                          fontFamily: 'Oxygen',
                          fontWeight: FontWeight.w200,
                          fontStyle: FontStyle.normal,
                        ),
                      ),
                    ),
                    Expanded(
                      child: Text(
                        'Funnab, Unilag',
                        textDirection: TextDirection.ltr,
                        style: TextStyle(
                          fontSize: 20.0,
                          color: Colors.white,
                          decoration: TextDecoration.none,
                          fontFamily: 'Oxygen',
                          fontWeight: FontWeight.w200,
                          fontStyle: FontStyle.italic,
                        ),
                      ),
                    )
                  ],
                ),
                ValImageWidget(),
                OrderButton(),
              ],
            )
          )
        );
  }
}

class ValImageWidget extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    AssetImage valImage = AssetImage('images/val.png');
    Image image = Image(image:valImage, width:400, height: 400);
    return Container( child : image,);
  }
}

class OrderButton extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    var button = Container(
      margin: EdgeInsets.only(top:30),
      child: RaisedButton(
        onPressed: () => order(context),
        elevation: 5.0,
        color: Colors.black,
        child : Text(
          'I Love You',
          style: TextStyle(
            color: Colors.cyanAccent,
            fontFamily: 'Oxygen',
            fontWeight: FontWeight.bold
          ),
        ),
      )
    );
    return button;
    
  }

  void order(BuildContext context){
    showDialog(
      context: context,
      builder: (BuildContext context){
        return AlertDialog(
          title:    Text('Hello',textAlign: TextAlign.center),
          content:  Text('Thanks For Being Mine',textAlign: TextAlign.center)
        );
      }
    );
  }



}
