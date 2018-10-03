import 'package:flutter/material.dart';
import 'package:flutter_app/profile.dart';

class LoginPage extends StatefulWidget {
  @override
  LoginPageState createState() {
    return new LoginPageState();
  }
}

class LoginPageState extends State<LoginPage> {
  final myUser = TextEditingController();

  final myPassword = TextEditingController();

  bool _obscureText = true;
  String user;
  String password;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }

  @override
  void dispose() {
    // Clean up the controller when the Widget is disposed
    myUser.dispose();
    myPassword.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      body: SingleChildScrollView(
        child: new Container(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
          decoration: BoxDecoration(
            gradient: new LinearGradient(
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
              stops: [0.0,1.0],
              colors: [
                Colors.teal,
                Colors.blueAccent
              ]
            )
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            mainAxisSize: MainAxisSize.max,
            children: <Widget> [
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 45.0),
                child: Image(
                  image: AssetImage('assets/logo.png'),
                  height: 250.0,
                  width: 250.0,
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top:20.0),
                child: Container(
                  child: Stack(
                    alignment: Alignment.topCenter,
                    overflow: Overflow.visible,
                    children: <Widget>[
                      Card(
                        elevation: 4.0,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(8.0)
                        ),
                        child: Container(
                          width: MediaQuery.of(context).size.width*0.9,
                          height: 200.0,
                          child: Column(
                            children: <Widget>[
                              Padding(
                                padding: EdgeInsets.all(18.0),
                                child: TextField(
                                  controller: myUser,
                                  decoration: InputDecoration(
                                    hintText: "Your name",
                                    icon: Icon(
                                      Icons.mail_outline,
                                      size: 30.0
                                    ),
                                    border: InputBorder.none
                                  ),

                                ),
                              ),
                              new Divider(
                                color: Colors.black,
                              ),
                              Padding(
                                padding: EdgeInsets.all(18.0),
                                child: TextField(
                                    controller: myPassword,
                                    obscureText: _obscureText,
                                  decoration: InputDecoration(
                                    icon: Icon(
                                      Icons.lock,
                                      size: 30.0
                                    ),
                                    border: InputBorder.none,
                                      hintText: "Password",
                                      suffixIcon: GestureDetector(
                                      onTap: () {
                                        setState(() {
                                          _obscureText = !_obscureText;
                                        });
                                      },
                                      child: Icon(
                                        Icons.remove_red_eye,
                                        size: 30.0,

                                      ),
                                    )
                                )
                              )
                              )

                            ],
                          ),
                        ),
                      ),
                      Positioned(
                        top: MediaQuery.of(context).size.height*0.30,
                        child: Container(
                          width: MediaQuery.of(context).size.width*0.45,
                          decoration: BoxDecoration(
                              gradient: new LinearGradient(
                                  begin: Alignment.topLeft,
                                  end: Alignment.bottomRight,
                                  stops: [0.0,1.0],
                                  colors: [
                                    Colors.lightBlueAccent,
                                    Colors.teal
                                  ]
                              )
                          ),
                          child: Center(
                            child: RaisedButton(
                              onPressed: () {
//                            print("Welcome ${myUser.text}");
                                String usr= myUser.text.trim();
                                String pass=myPassword.text.trim();
                                if(usr=="user" && pass=="admin") {
                                Navigator.pushReplacement(
                                  context,
                                  MaterialPageRoute(builder: (context) => Profile()),
                                );
                                }

                                else {
                                  showDialog(
                                  context: context,
                                  builder: (context) {
                                    return AlertDialog(
                                      content: Text("Wrong user id or password",style: TextStyle(color: Colors.blue),textAlign: TextAlign.center,),
                                    );
                                  },
                                );
                                }

                              },
                              elevation: 0.0,
                              splashColor: Colors.blueAccent,
                              highlightElevation: 0.0,
                              color: Colors.transparent,
                              child: Text("Pressed",
                              style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold
                              ))
                            ),
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              )
            ]
          ),
        ),
      ),
    );
  }
}
