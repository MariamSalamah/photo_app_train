import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  int _Currentindex=0 ;

  final List _images = [
    Center(child: Image(image: AssetImage('assets/images/praying girl.jpg'))),
    Center(child: Image(image: AssetImage('assets/images/reading.jpg'))),
    Center(child: Image(image: AssetImage('assets/images/note.jpg'))),
  ];



  Widget build(BuildContext context) {
    return Scaffold(

      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
      ),
      body: _images[_Currentindex],
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        unselectedFontSize: 0,
            selectedFontSize: 0,
             items: [
          BottomNavigationBarItem(
              icon:  Icon(
                Icons.repeat,
                color: Colors.black,
              ),
              title: Text(
                "",
                style: TextStyle(fontSize: 0),
              )),
          BottomNavigationBarItem(
              icon: new Icon(
                Icons.skip_previous,
                color: Colors.black,
              ),
              title: Text(
                "",
                style: TextStyle(fontSize: 0),
              )),
          BottomNavigationBarItem(
              icon: InkWell(
                onTap: (){
                  setState(() {
                    if (_Currentindex< _images.length-1){
                      _Currentindex++;
                    }
                    else {
                      _Currentindex=0;
                    }

                  });
                },
                  child: Icon(
                Icons.play_circle_filled,
                color: Colors.green,
                    size: 60,
              )),
              title: Text(
                "",
                style: TextStyle(fontSize: 0),
              )),
          BottomNavigationBarItem(
              icon: new Icon(
                Icons.skip_next,
                color: Colors.black,
              ),
              title: Text(
                "",
                style: TextStyle(fontSize: 0),
              )),
          BottomNavigationBarItem(
              icon: new Icon(
                Icons.shuffle,
                color: Colors.black,
              ),
              title: Text(
                "",
                style: TextStyle(fontSize: 0),
              )),
        ],
      ),
    );
  }
}
