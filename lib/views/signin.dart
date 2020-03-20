import 'package:flutter/material.dart';

class Login extends StatelessWidget {
  double smallDiameter(BuildContext context) =>
      MediaQuery.of(context).size.width * 3 / 4;
  double bigDiameter(BuildContext context) =>
      MediaQuery.of(context).size.width * 7 / 8;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Stack(children: <Widget>[
          Positioned(
            top: -bigDiameter(context) / 4,
            right: -bigDiameter(context) / 4,
            child: Container(
              width: bigDiameter(context),
              height: bigDiameter(context),
              decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  gradient: LinearGradient(
                      colors: [Color(0xFFF679A3), Color(0xFFE9446A)],
                      begin: Alignment.topCenter,
                      end: Alignment.bottomCenter)),
            ),
          ),
          Positioned(
            top: -smallDiameter(context) / 2,
            left: -smallDiameter(context) / 4,
            child: Container(
              width: smallDiameter(context),
              height: smallDiameter(context),
              decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  gradient: LinearGradient(
                      colors: [Color(0xFFF6DC79), Color(0xFFFF9E7B)],
                      begin: Alignment.topCenter,
                      end: Alignment.bottomCenter)),
            ),
          ),
          Positioned(
            top: smallDiameter(context) / 0.45,
            left: smallDiameter(context) / 3,
            child: Opacity(
              opacity: 0.2,
              child: Container(
                width: smallDiameter(context),
                height: smallDiameter(context),
                decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    gradient: LinearGradient(
                        colors: [Color(0xFFF6DC79), Color(0xFFFF9E7B)],
                        begin: Alignment.topCenter,
                        end: Alignment.bottomCenter)),
              ),
            ),
          ),
          Positioned(
            top: bigDiameter(context) / 0.56,
            right: -bigDiameter(context) / 2,
            child: Opacity(
              opacity: 0.2,
              child: Container(
                width: bigDiameter(context),
                height: bigDiameter(context),
                decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    gradient: LinearGradient(
                        colors: [Color(0xFFF679A3), Color(0xFFE9446A)],
                        begin: Alignment.topCenter,
                        end: Alignment.bottomCenter)),
              ),
            ),
          ),
          Align(
            alignment: Alignment.topCenter,
            child: Column(
              children: <Widget>[
                Container(
                  margin: EdgeInsets.only(top: 150),
                  height: 80,
                  width: 80,
                  child: Center(
                      child: Icon(
                    Icons.chat_bubble,
                    color: Color(0xFFE9446A),
                    size: 40,
                  )),
                  decoration: BoxDecoration(
                      shape: BoxShape.rectangle,
                      borderRadius: BorderRadius.circular(5),
                      color: Colors.white,
                      boxShadow: [
                        BoxShadow(
                            color: Colors.black26, offset: Offset(1.0, 0.5))
                      ]),
                ),
                SizedBox(
                  height: 10,
                ),
                Text(
                  'Hello Again.',
                  style: TextStyle(fontSize: 18),
                ),
                Text(
                  'Welcome Back.',
                  style: TextStyle(fontSize: 18),
                )
              ],
            ),
          ),
          Container(
            margin: EdgeInsets.only(
                left: 20, top: MediaQuery.of(context).size.height / 2, right: 20),
            child: Column(
              children: <Widget>[
                Container(
                  margin: EdgeInsets.only(bottom: 20),
                  child: Material(
                    elevation: 0.5,
                    child: TextField(
                      decoration: InputDecoration(
                          labelText: ' EMAIL',
                          border: InputBorder.none,
                          labelStyle: TextStyle(color: Colors.grey)),
                    ),
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(bottom: 20),
                  child: Material(
                    elevation: 0.5,
                    child: TextField(
                      obscureText: true,
                      decoration: InputDecoration(
                          labelText: ' PASSWORD',
                          border: InputBorder.none,
                          labelStyle: TextStyle(color: Colors.grey)),
                    ),
                  ),
                ),
                Container(
                  height: 55,
                  width: double.infinity,
                  child: RaisedButton(
                    child: Text(
                      'Sign in',
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 16,
                          fontWeight: FontWeight.w700),
                    ),
                    color: Color(0xFFE9446A),
                    onPressed: () {},
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(top: 25, bottom: 67),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Text(
                        'New To Friendly Desi ?',
                        style:
                            TextStyle(fontSize: 13, color: Color(0xFF1D1D26)),
                      ),
                      Text(
                        ' Sign up',
                        style:
                            TextStyle(fontSize: 13, color: Color(0xFFE9446A)),
                      )
                    ],
                  ),
                ),
              ],
            ),
          )
        ]),
      ),
    );
  }
}
