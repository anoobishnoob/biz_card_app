import 'package:flutter/material.dart';



class BizCard extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text("BizCard"),
        centerTitle: true,
      ),
      body: Container(
        alignment: Alignment.center,
       child: Stack(
         alignment: Alignment.topCenter,
         children: <Widget>[
           //Text("asdf")
           _getCard(),
           _getAvatar()
         ],
       ),
      ),

    );
  }

  Container _getCard() {
    return Container(
      width: 350,
      height: 200,
      margin: EdgeInsets.all(50.0),
      decoration: BoxDecoration(
        color: Colors.lightBlueAccent,
        borderRadius: BorderRadius.circular(20.5)
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
       children: <Widget>[
         Text("Samme Qandil",
         style: TextStyle(fontSize: 20.9,
         fontWeight:FontWeight.bold ),),
         Text("github.com/anoobishnoob"),
         Row(
           mainAxisAlignment: MainAxisAlignment.center,
           children: <Widget>[
             Icon(Icons.person),
             Text("some link to a website")
           ],
         )
       ],
      )
    );

  }

  Container _getAvatar() {
    return Container(
      width: 100,
      height: 100,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.all(Radius.circular(50.0)),
        border: Border.all(color: Colors.red, width: 1.2),
          image: DecorationImage(image: NetworkImage("https://picsum.photos/200/300"),
            fit: BoxFit.cover)
      ),
    );

  }
}