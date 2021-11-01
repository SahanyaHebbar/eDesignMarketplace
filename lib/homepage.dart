import 'package:flutter/material.dart';

const EdgeInsets hpadding1 = EdgeInsets.only(left: 25, right: 25);
const EdgeInsets hpadding2 = EdgeInsets.only(left: 25, right: 25, top: 50);

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFFAE3DE),
      appBar: AppBar(
        backgroundColor: Colors.orange[700],
        leading: Padding(
          padding: const EdgeInsets.only(left: 10.0),
          child: Icon(
            Icons.menu_outlined,
          ),
        ),
        title: Text('Home'),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 25.0),
            child: Icon(
              Icons.shopping_cart_outlined,
            ),
          ),
        ],
      ),
      body: Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                TypeCard(
                  container: Container(),
                  padding: hpadding1,
                ),
                TypeCard(
                  container: Container(),
                  padding: hpadding1,
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                TypeCard(
                  container: Container(),
                  padding: hpadding2,
                ),
                TypeCard(
                  container: Container(),
                  padding: hpadding2,
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}

class TypeCard extends StatelessWidget {
  TypeCard({@required this.container, @required this.padding});

  final Container container;
  final EdgeInsets padding;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: padding,
      child: SizedBox(
        width: 150.0,
        height: 250.0,
        child: RaisedButton(
          //color: buttoncolor,
          onPressed: null,
          /*onPressed: () {
            if (pageonclick != '/HomePage_Meals') {
              Navigator.popUntil(
                  context, ModalRoute.withName('/HomePage_Meals'));
              Navigator.pushNamed(context, pageonclick);
            } else {
              Navigator.popUntil(
                  context, ModalRoute.withName('/HomePage_Meals'));
            }
          },*/
          textColor: Colors.black,
          child: Container(
            width: 80.0,
            height: 200.0,
          ),
        ),
      ),
    );
  }
}
