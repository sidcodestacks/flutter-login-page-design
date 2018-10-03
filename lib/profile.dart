import 'package:flutter/material.dart';

class Profile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
        resizeToAvoidBottomPadding: false,
        appBar: AppBar(
          title: Padding(
            padding: const EdgeInsets.all(0.0),
            child: Text('Profile'),
          ),
          backgroundColor: Colors.blue,
        ),
        body: new Container(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
          child: Column(
            children: <Widget>[
              Stack(
                alignment: Alignment.topCenter,
                children: <Widget>[
                  Column(
                    children: <Widget>[
                      Image(
                        height: MediaQuery.of(context).size.height * 0.3,
                        width: 250.0,
                        image: AssetImage('assets/logo.png'),
                      ),
                      Container(
                        width: MediaQuery.of(context).size.width,
                        //height: 368.0,
                         height: MediaQuery.of(context).size.height,
                        decoration: new BoxDecoration(
                            gradient: new LinearGradient(
                                begin: Alignment.topLeft,
                                end: Alignment.bottomLeft,
                                stops: [
                              0.0,
                              1.0
                            ],
                                colors: [
                              Colors.blue,
                              Colors.teal,
                            ])),
                        child: Row(
                          mainAxisSize: MainAxisSize.max,
                          children: <Widget>[
                            Padding(
                              padding:
                                  const EdgeInsets.symmetric(vertical: 50.0,horizontal: 10.0),
                              child: Column(
                                mainAxisSize: MainAxisSize.max,
                                mainAxisAlignment:
                                    MainAxisAlignment.start,
                                children: <Widget>[
                                  Column(
                                    children: <Widget>[
                                      Text("12",
                                          style: TextStyle(
                                              fontSize: 35.0,
                                              color: Colors.white)),
                                      Text("Posts",
                                          style: TextStyle(
                                              fontSize: 15.0,
                                              color: Colors.white)),
                                    ],
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(top:33.0),
                                    child: Column(
                                      children: <Widget>[
                                        Text("23",
                                            style: TextStyle(
                                                fontSize: 35.0,
                                                color: Colors.white)),
                                        Text("Followers",
                                            style: TextStyle(
                                                fontSize: 15.0,
                                                color: Colors.white)),
                                      ],
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(top:33.0),
                                    child: Column(
                                      children: <Widget>[
                                        Text("56",
                                            style: TextStyle(
                                                fontSize: 35.0,
                                                color: Colors.white)),
                                        Text("Following",
                                            style: TextStyle(
                                                fontSize: 15.0,
                                                color: Colors.white)),
                                      ],
                                    ),
                                  )
                                ],
                              ),
                            ),
                            SizedBox(width: 15.0),
                            Padding(
                              padding: const EdgeInsets.symmetric(vertical: 30.0),
                              child: Column(
                                mainAxisAlignment:
                                MainAxisAlignment.start,
                                children: <Widget>[
                                  Column(
                                    mainAxisAlignment:
                                    MainAxisAlignment.start,
                                    children: <Widget>[
                                      Text("Scott Colon",
                                          textAlign: TextAlign.left,
                                          style: TextStyle(
                                              fontSize: 45.0,
                                              color: Colors.white,
                                              fontWeight: FontWeight.bold)),
                                      SizedBox(
                                        height: 2.0,
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.only(right:106.0),
                                        child: Text("Photographer",
                                            style: TextStyle(
                                                fontSize: 20.0,
                                                color: Colors.white,
                                                fontWeight: FontWeight.w600)),
                                      ),
                                      SizedBox(
                                        height: 15.0,
                                      ),
                                      Container(
                                        width: MediaQuery.of(context).size.width * 0.65,
                                        child: new Text(
                                          "Lorem Ipsum is simply dummy text of the printing and typesetting industry. "
                                              +"Lorem Ipsum has been the industry's standard dummy text ever since the 1500s,"
                                              +" when an unknown printer took a galley of type and scrambled it to make a type specimen book. "
                                              +"It has survived not only five centuries, but also the leap into electronic typesetting"
                                              +", as it is.",
                                          textDirection: TextDirection.ltr,
                                          softWrap: true,
                                          style: new TextStyle(
                                            fontSize: 15.0,
                                            color: Colors.white,
                                          ),
                                        ),
                                      )
                                    ],
                                  ),
                                ],
                              ),
                            )
                          ],
                        ),
                      ),
                    ],
                  ),
                  Positioned(
                    top: MediaQuery.of(context).size.height * 0.26,
                    left: MediaQuery.of(context).size.width * 0.09,
                    child: MaterialButton(
                      onPressed: () {},
                      highlightColor: Colors.transparent,
                      child: Container(
                        height: 60.0,
                        width: 60.0,
                        decoration: BoxDecoration(
                          color: Colors.blue,
                          borderRadius: BorderRadius.circular(100.0),
                          boxShadow: [
                            new BoxShadow(
                              color: Colors.black45,
                              offset: new Offset(0.0, 2.0),
                              blurRadius: 7.0,
                            ),
                          ],
                        ),
                        child: Icon(
                          Icons.add,
                          color: Colors.white,
                          size: 55.0,
                        ),
                      ),
                    ),
                  )
                ],
              )
            ],
          ),
        ));
  }
}
