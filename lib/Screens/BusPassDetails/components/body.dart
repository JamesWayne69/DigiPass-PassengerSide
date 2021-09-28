import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_auth/components/global_variables.dart'as globals;



class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    return Scaffold(
        backgroundColor: Color(0xFFF1E6FF),
        appBar: AppBar(
          title: Text("Bus Pass Details"),
          backgroundColor: Color(0xFF6F35A5),
          elevation: 0.0,
        ),
        body: Padding(
            padding: EdgeInsets.fromLTRB(30.0, 40.0, 30.0, 0.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text(
                    'Departure: ',
                    style: TextStyle(
                      color: Colors.black,
                      letterSpacing: 2.0,
                    )
                ),
                SizedBox(height: 10.0),
                Text(
                    globals.dep,
                    style: TextStyle(
                      color: Colors.black,
                      letterSpacing: 2.0,
                      fontSize: 25.0,
                    )
                ),
                SizedBox(height: 10.0),
                Text(
                    'Arrival: ',
                    style: TextStyle(
                      color: Colors.black,
                      letterSpacing: 2.0,
                    )
                ),
                SizedBox(height: 10.0),
                Text(
                    globals.arr,
                    style: TextStyle(
                      color: Colors.black,
                      letterSpacing: 2.0,
                      fontSize: 25.0,
                    )
                ),
                SizedBox(height: 10.0),


                SizedBox(height: 10.0),


              ],
            )
        )
    );

  }
}

