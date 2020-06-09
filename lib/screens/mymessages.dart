import 'package:flutter/material.dart';

class MyMessages extends StatefulWidget {
  @override
  _MyMessagesState createState() => _MyMessagesState();
}

class _MyMessagesState extends State<MyMessages> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        children: <Widget>[
          Container(
            width: MediaQuery.of(context).size.width * 0.15,
            child: Column(
              children: <Widget>[
                CircleAvatar(
                  backgroundImage: NetworkImage('https://www.pcgamesn.com/wp-content/uploads/2020/03/valorant-logo.jpg'),
                ),
              ],
            ),
          ),
          Container(
            width: MediaQuery.of(context).size.width * 0.82,
            child: Column(
              children: <Widget>[
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.014,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Wrap(

                      children: <Widget>[
                        RichText(
                          text: TextSpan(
                              text: 'Twitter Support',
                            style: TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                        Icon(Icons.check_circle, color: Colors.blue, size: 15.0,),
                        Text('@twitter'),
                      ],
                    ),
                    Text('03 Jan 19'),
                  ],
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.01,
                ),
                Align(
                    alignment: Alignment.centerLeft,
                    child: Text('Thanks for getting in touch. We Will let you know about how to get certified on our platform.')),
                Divider(),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
