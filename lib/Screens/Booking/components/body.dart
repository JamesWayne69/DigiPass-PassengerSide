import 'package:flutter/material.dart';
import 'package:flutter_auth/Screens/Payment/payment.dart';
import 'package:flutter_auth/Screens/Welcome/components/background.dart';
import 'package:flutter_auth/components/rounded_button.dart';
import 'package:flutter_auth/components/global_variables.dart' as globals ;


class Body extends StatefulWidget {
  const Body({Key key}) : super(key: key);

  @override
  _BodyState createState() => _BodyState();
}

class _BodyState extends State<Body> {

  final textController_1 = TextEditingController();
  final textController_2 = TextEditingController();

  checkTextFieldEmptyOrNot() {
    // Getting Value From Text Field and Store into String Variable
    globals.dep = textController_1.text;
    globals.arr = textController_2.text;

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


    if (globals.dep == '' || globals.arr == '') {
      return _showAlertDialog();
    } else {
      Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) {
            return Payment() ;
          },
        ),
      );
    }
  }

  bool _spass = false;
  bool _mpass = false;
  bool _opass = false;
  bool _jpass = false;

  void _cstu(bool isChecked) {
    setState(() {
      _spass = isChecked;
    });
    globals.typ = 'Student Pass';
  }
  void _cmon(bool isChecked) {
    setState(() {
      _mpass = isChecked;
    });
    globals.typ = 'Monthly Pass';
  }
  void _cold(bool isChecked) {
    setState(() {
      _opass = isChecked;
    });
    globals.typ = 'Senior Citizen Pass';
  }
  void _cjrn(bool isChecked) {
    setState(() {
      _jpass = isChecked;
    });
    globals.typ = 'Journalist Pass';
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
              "BOOKING",
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            SizedBox(height: size.height * 0.05),

            Container(
                width: 280,
                padding: EdgeInsets.all(10.0),
                child: TextField(
                  controller: textController_1,
                  autocorrect: true,
                  decoration: InputDecoration(hintText: 'Departure Location'),
                )
            ),

            Container(
                width: 280,
                padding: EdgeInsets.all(10.0),
                child: TextField(
                  controller: textController_2,
                  autocorrect: true,
                  decoration: InputDecoration(hintText: 'Arrival Location'),
                )
            ),

            SizedBox(height: size.height * 0.05),

            CheckboxListTile( //                   <--- CheckboxListTile
              title: Text('STUDENT PASS'),
              value: _spass,
              onChanged: (newValue) {
              _cstu(newValue);
              },
              controlAffinity: ListTileControlAffinity.leading,
        ),

            CheckboxListTile( //                   <--- CheckboxListTile
              title: Text('MONTHLY PASS'),
              value: _mpass,
              onChanged: (newValue) {
                _cmon(newValue);
              },
              controlAffinity: ListTileControlAffinity.leading,
            ),

            CheckboxListTile( //                   <--- CheckboxListTile
              title: Text('SENIOR CITIZEN PASS'),
              value: _opass,
              onChanged: (newValue) {
                _cold(newValue);
              },
              controlAffinity: ListTileControlAffinity.leading,
            ),

            CheckboxListTile( //                   <--- CheckboxListTile
              title: Text('JOURNALIST PASS'),
              value: _jpass,
              onChanged: (newValue) {
                _cjrn(newValue);
              },
              controlAffinity: ListTileControlAffinity.leading,
            ),

            RoundedButton(
              text: "PROCEED TO PAYMENT",
              press: checkTextFieldEmptyOrNot,
            ),
          ],
        ),
      ),
    );
  }
}