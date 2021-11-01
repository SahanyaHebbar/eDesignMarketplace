import 'package:eDesignMarketplace/constants.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: Colors.orange[700],
      appBar: AppBar(
        backgroundColor: Colors.orange[700],
        title: Text('eDsignMarketplace'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          PeachCard(
            container: Container(
              height: 500,
              color: Color(0xFFFAE3DE),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(40.0),
                    child: Column(
                      children: [
                        TextField(
                          showCursor: true,
                          decoration: InputDecoration(
                            labelText: 'Username',
                            labelStyle: kPoppinTitle,
                          ),
                        ),
                        SizedBox(
                          height: 50,
                        ),
                        TextField(
                          showCursor: true,
                          decoration: InputDecoration(
                            //hintText: 'Enter here',
                            labelText: "Password",
                            labelStyle: kPoppinTitle,
                          ),
                        ),
                        SizedBox(
                          height: 50,
                        ),
                        WPRaisedButton(
                          buttonTitle: "Login",
                          onPressed: () =>
                              Navigator.pushNamed(context, '/homepage'),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class PeachCard extends StatelessWidget {
  PeachCard({@required this.container});

  final Container container;
  @override
  Widget build(BuildContext context) {
    return Card(
      color: Color(0xFFFAE3DE),
      margin: EdgeInsets.only(left: 5, right: 5, top: 177),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.only(
            topLeft: Radius.circular(20.0), topRight: Radius.circular(20.0)),
      ),
      child: Column(
        children: [
          SizedBox(
            height: 40.0,
          ),
          container,
        ],
      ),
    );
  }
}

class WPRaisedButton extends StatelessWidget {
  WPRaisedButton({this.buttonTitle, this.onPressed});

  final String buttonTitle;
  final Function onPressed;
  @override
  Widget build(BuildContext context) {
    return ButtonTheme(
      minWidth: 300.0,
      child: RaisedButton(
        child: Text(
          buttonTitle,
          style: TextStyle(fontFamily: 'Poppins', fontSize: 25),
        ),
        onPressed: onPressed,
        color: Colors.orange[700],
        textColor: Colors.white,
        padding: EdgeInsets.all(8.0),
        splashColor: Colors.grey,
        elevation: 10.0,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(25.0),
        ),
      ),
    );
  }
}
