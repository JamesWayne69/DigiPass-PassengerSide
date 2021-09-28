import 'package:flutter/material.dart';
import 'package:flutter_auth/Screens/HomeScreen/home_screen.dart';
import 'package:flutter_auth/Screens/Login/components/background.dart';
import 'package:flutter_auth/Screens/Signup/signup_screen.dart';
import 'package:flutter_auth/components/already_have_an_account_acheck.dart';
import 'package:flutter_auth/components/rounded_button.dart';

class Body extends StatefulWidget {
  const Body({Key key}) : super(key: key);

  @override
  _Body createState() => _Body();
}

class _Body extends State<Body> {



  final textController_1 = TextEditingController();
  final textController_2 = TextEditingController();


  checkTextFieldEmptyOrNot(){

    // Getting Value From Text Field and Store into String Variable
    String text1 = textController_1.text ;
    String text2 = textController_2.text ;

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



    if(text1 == '' || text2 == '' )
    {
      // Put your code here which you want to execute when Text Field is Empty.
      return _showAlertDialog();

    }else{
      Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) {
            return HomeScreen();
          },
        ),
      );


    }



  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Background(
      child: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              "LOGIN",
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            SizedBox(height: size.height * 0.03),
            Image.asset(
              "assets/images/tn_logo.png",
              height: size.height * 0.35,
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
                  decoration: InputDecoration(hintText: 'Enter Password'),
                  obscureText: true,
                )
            ),
            RoundedButton(
              text: "LOGIN",
              press: checkTextFieldEmptyOrNot,
            ),
            SizedBox(height: size.height * 0.03),
            AlreadyHaveAnAccountCheck(
              press: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) {
                      return SignUpScreen();
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
