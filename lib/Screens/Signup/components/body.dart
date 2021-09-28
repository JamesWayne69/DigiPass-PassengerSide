import 'package:flutter/material.dart';
import 'package:flutter_auth/Screens/Booking/booking.dart';
import 'package:flutter_auth/Screens/Login/login_screen.dart';
import 'package:flutter_auth/Screens/Signup/components/background.dart';
import 'package:flutter_auth/components/already_have_an_account_acheck.dart';
import 'package:flutter_auth/components/rounded_button.dart';
import 'package:flutter_auth/components/global_variables.dart' as globals;



class Body extends StatefulWidget {
  const Body({Key key}) : super(key: key);

  @override
  _Body createState() => _Body();
}

class _Body extends State<Body> {


  final textController_1 = TextEditingController();
  final textController_2 = TextEditingController();
  final textController_3 = TextEditingController();
  final textController_4 = TextEditingController();
  final textController_5 = TextEditingController();


  checkTextFieldEmptyOrNot() {
    // Getting Value From Text Field and Store into String Variable
    globals.anum = textController_1.text;
    globals.name = textController_2.text;
    globals.mno = textController_3.text;
    String cpass = textController_4.text;
    globals.pass = textController_5.text;

    void _showAlertDialog() {
      // set up the button
      Widget okButton = TextButton(
        child: Text("OK"),
        onPressed: () {
          // This closes the dialog. `context` means the BuildContext, which is
          // available by default inside of a State object. If you are working
          // with an AlertDialog in a StatelessWidget, then you would need to
          // pass a reference to the BuildContext.
          Navigator.pop(context);
        },
      );

      // set up the AlertDialog
      AlertDialog alert = AlertDialog(
        title: Text("ALERT!!!"),
        content: Text("You have not entered the required fields"),
        actions: [
          okButton,
        ],
      );

      // show the dialog
      showDialog(
        context: context,
        builder: (BuildContext context) {
          return alert;
        },
      );
    }


    if (globals.anum == '' || globals.name == ''|| globals.mno == ''|| globals.pass == '') {
      return _showAlertDialog();

    } else {
      Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) {
            return Booking();
          },
        ),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery
        .of(context)
        .size;
    return Background(
      child: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              "SIGNUP",
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            SizedBox(height: size.height * 0.03),

            Container(
                width: 280,
                padding: EdgeInsets.all(10.0),
                child: TextField(
                  controller: textController_1,
                  autocorrect: true,
                  decoration: InputDecoration(hintText: 'Aadhar Number'),
                )
            ),
            Container(
                width: 280,
                padding: EdgeInsets.all(10.0),
                child: TextField(
                  controller: textController_2,
                  autocorrect: true,
                  decoration: InputDecoration(hintText: 'Name'),
                )
            ),
            Container(
                width: 280,
                padding: EdgeInsets.all(10.0),
                child: TextField(
                  controller: textController_3,
                  autocorrect: true,
                  decoration: InputDecoration(hintText: 'Mobile Number'),
                )
            ),
            Container(
                width: 280,
                padding: EdgeInsets.all(10.0),
                child: TextField(
                  controller: textController_4,
                  autocorrect: true,
                  decoration: InputDecoration(hintText: 'Password'),
                  obscureText: true,
                )
            ),
            Container(
                width: 280,
                padding: EdgeInsets.all(10.0),
                child: TextField(
                  controller: textController_5,
                  autocorrect: true,
                  decoration: InputDecoration(hintText: 'Confirm Password'),
                  obscureText: true,
                )
            ),
            RoundedButton(
              text: "SIGNUP",
              press: checkTextFieldEmptyOrNot,
            ),
            SizedBox(height: size.height * 0.03),
            AlreadyHaveAnAccountCheck(
              login: false,
              press: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) {
                      return LoginScreen();
                    },
                  ),
                );
              },
            ),

          ],
        ),
      ),
    );
  }


}