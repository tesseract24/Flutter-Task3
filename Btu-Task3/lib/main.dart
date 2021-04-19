import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          appBar: AppBar(
              title: Center(
                  child: Text("BTU TASK 3",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: 30.0,
                      )))),
          body: Center(child: UpdateImg())),
    );
  }
}

class UpdateImg extends StatefulWidget {
  UpdateImgState createState() => UpdateImgState();
}

class UpdateImgState extends State {
  String imgHolder = 'https://pngimg.com/uploads/earth/earth_PNG39.png';
  String textHolder = 'Earth';

  changeImg() {
    setState(() {
      textHolder = 'Earth';
      imgHolder = 'https://pngimg.com/uploads/earth/earth_PNG39.png';
    });
  }

  changeImg2() {
    setState(() {
      textHolder = 'Moon';
      imgHolder = 'https://pngimg.com/uploads/moon/moon_PNG10.png';
    });
  }

  changeImg3() {
    setState(() {
      textHolder = 'Mars';
      imgHolder = 'https://pngimg.com/uploads/mars_planet/mars_planet_PNG23.png';
    });
  }
  
  @override
  Widget build(BuildContext context) {
    final orientation = MediaQuery.of(context).orientation;
    return Scaffold(
      body: LayoutBuilder(
        builder: (context, constraints) {
          if (Orientation.portrait == orientation) {
            return (Center(
                child: Column(children: <Widget>[
                  Container(padding: EdgeInsets.fromLTRB(20, 20, 20, 0), child: Text('$textHolder', style: TextStyle( fontSize: 50.0, ))),
                  Container(padding: EdgeInsets.fromLTRB(20, 20, 20, 60), child: Image.network('$imgHolder')),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                        RaisedButton(
                            onPressed: () => changeImg(),
                            child: Text('Earth',
                                style: TextStyle(
                                fontSize: 30.0,
                                )),
                            textColor: Colors.white,
                            color: Colors.blue,
                        ),
                        RaisedButton(
                            onPressed: () => changeImg2(),
                            child: Text('Moon',
                                style: TextStyle(
                                fontSize: 30.0,
                                )),
                            textColor: Colors.white,
                            color: Colors.grey,
                        ),
                        RaisedButton(
                            onPressed: () => changeImg3(),
                            child: Text('Mars',
                                style: TextStyle(
                                fontSize: 30.0,
                                )),
                            textColor: Colors.white,
                            color: Colors.red,
                        ),
                    ],
                  )
                ])));
          } 
          else {
            return (Center(
                child:Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                        Column(children: <Widget>[
                            Container(child: Image.network('$imgHolder'), height: 200, width: 200 , margin: EdgeInsets.symmetric(vertical: 10.0)),
                            Container(child: Text('$textHolder', style: TextStyle( fontSize: 50.0, ))),
                            ]),
                        Column
                        (mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: <Widget>[
                            RaisedButton(
                                onPressed: () => changeImg(),
                                child: Text('Earth',
                                    style: TextStyle(
                                    fontSize: 30.0,
                                    )),
                                textColor: Colors.white,
                                color: Colors.blue,
                            ),
                            RaisedButton(
                                onPressed: () => changeImg2(),
                                child: Text('Moon',
                                    style: TextStyle(
                                    fontSize: 30.0,
                                    )),
                                textColor: Colors.white,
                                color: Colors.grey,
                            ),
                            RaisedButton(
                                onPressed: () => changeImg3(),
                                child: Text('Mars',
                                    style: TextStyle(
                                    fontSize: 30.0,
                                    )),
                                textColor: Colors.white,
                                color: Colors.red,
                            ),
                            ]),
                    ],
                  )));
          }
          ;
        },
      ),
    );
  }
}