import 'package:eDesignMarketplace/constants.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.orange[700],
      child: Scaffold(
        appBar: AppBar(
          title: Text('eDsignMarketplace'),
        ),
        body: PeachCard(
          container: Container(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text(
                  'Username:',
                  style: kPoppinTitle,
                  textDirection: TextDirection.ltr,
                ),
                SizedBox(
                  height: 40,
                ),
                TextField(
                  showCursor: true,
                  decoration: InputDecoration(
                    hintText: 'Enter here',
                  ),
                )
              ],
            ),
          ),
        ),
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
      margin: EdgeInsets.symmetric(vertical: 120.0, horizontal: 10),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.only(
            topLeft: Radius.circular(20.0), topRight: Radius.circular(20.0)),
      ),
      child: Column(
        children: [
          SizedBox(
            height: 20.0,
          ),
          container,
        ],
      ),
    );
  }
}
