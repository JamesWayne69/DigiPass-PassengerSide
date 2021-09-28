import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_auth/components/global_variables.dart'as globals;
import 'package:flutter_auth/components/rounded_button.dart';
import 'package:flutter_auth/Screens/Welcome/welcome_screen.dart';


class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      backgroundColor: Color(0xFFF1E6FF),
      appBar: AppBar(
        title: Text("User Profile"),
        backgroundColor: Color(0xFF6F35A5),
        elevation: 0.0,
      ),
      body: Padding(
        padding: EdgeInsets.fromLTRB(30.0, 40.0, 30.0, 0.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text(
              'Name: ',
              style: TextStyle(
                color: Colors.black,
                letterSpacing: 2.0,
              )
            ),
            SizedBox(height: 10.0),
            Text(
                globals.name,
                style: TextStyle(
                  color: Colors.black,
                  letterSpacing: 2.0,
                  fontSize: 25.0,
                )
            ),
            SizedBox(height: 10.0),
            Text(
                'Aadhar Number: ',
                style: TextStyle(
                  color: Colors.black,
                  letterSpacing: 2.0,
                )
            ),
            SizedBox(height: 10.0),
            Text(
                globals.anum,
                style: TextStyle(
                  color: Colors.black,
                  letterSpacing: 2.0,
                  fontSize: 25.0,
                )
            ),
            SizedBox(height: 10.0),
            Text(
                'Mobile Number: ',
                style: TextStyle(
                  color: Colors.black,
                  letterSpacing: 2.0,
                )
            ),
            SizedBox(height: 10.0),
            Text(
                globals.mno,
                style: TextStyle(
                  color: Colors.black,
                  letterSpacing: 2.0,
                  fontSize: 25.0,
                )
            ),

            SizedBox(height: 10.0),
            RoundedButton(
              text: "LOGOUT",
              press: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) {
                      return WelcomeScreen();
                    },
                  ),
                );
              }
            ),

          ],
        )
      )
    );

  }
}

