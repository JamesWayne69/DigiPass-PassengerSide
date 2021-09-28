import 'package:flutter/material.dart';

class CheckTextField extends StatefulWidget {
  const CheckTextField({Key key}) : super(key: key);

  @override
  _CheckTextFieldState createState() => _CheckTextFieldState();
}

class _CheckTextFieldState extends State<CheckTextField> {



  final textController_1 = TextEditingController();
  final textController_2 = TextEditingController();
  final textController_3 = TextEditingController();


  checkTextFieldEmptyOrNot(){

    // Getting Value From Text Field and Store into String Variable
    String text1 = textController_1.text ;
    String text2 = textController_2.text ;
    String text3 = textController_3.text ;

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
        title: Text("Dialog title"),
        content: Text("This is a Flutter AlertDialog."),
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



    if(text1 == '' || text2 == '' || text3 == '')
    {
      // Put your code here which you want to execute when Text Field is Empty.
      return _showAlertDialog();

    }else{

      // Put your code here, which you want to execute when Text Field is NOT Empty.
      print('Not Empty, All Text Input is Filled.');
    }



  }

  @override
  Widget build(BuildContext context) {

  }
}
