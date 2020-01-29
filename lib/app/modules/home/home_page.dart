import 'package:flutter/material.dart';
import 'package:neu_morphic/app/shared/widgets/neu_button/neu_container.dart';

class HomePage extends StatefulWidget {
  final String title;
  const HomePage({Key key, this.title = "Home"}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0XFFF1F2F4),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Expanded(
            child: ListView(
              children: <Widget>[
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    NeuContainer(
                      child: Container(
                          padding: EdgeInsets.all(10),
                          child: Icon(
                            Icons.arrow_back_ios,color: Colors.grey.shade500
                          )),
                    ),
                     NeuContainer(
                      child: Container(
                          padding: EdgeInsets.all(10),
                          child: Icon(
                            Icons.filter_list,color: Colors.grey.shade500,
                          )),
                    ),
                  ],
                ),
                Padding(
                  padding: EdgeInsets.only(left: 20, right: 20, top: 8),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text(
                        'Hi Zain,',
                        style: TextStyle(fontWeight: FontWeight.w500),
                      ),
                      Text(
                        'What would you like to have, wer offering some services',
                        style: TextStyle(color: Colors.grey.shade400),
                      ),
                    ],
                  ),
                ),
                NeuContainer(
                  child: Padding(
                    child: TextField(
                      decoration: InputDecoration(
                          fillColor: Colors.grey.shade400,
                          suffixIcon: Icon(
                            Icons.search,
                            color: Colors.grey.shade400,
                          ),
                          hintText: 'Find Your Synptions',
                          border: InputBorder.none),
                    ),
                    padding: EdgeInsets.only(left: 8, right: 8),
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    NeuContainer(
                      child: Container(
                        height: 170,
                        width: 140,
                      ),
                    ),
                    NeuContainer(
                      child: Container(
                        height: 170,
                        width: 140,
                      ),
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    NeuContainer(
                      child: Container(
                        height: 170,
                        width: 140,
                      ),
                    ),
                    NeuContainer(
                      child: Container(
                        height: 170,
                        width: 140,
                      ),
                    ),
                  ],
                ),
                NeuContainer(
                  child: Container(
                    height: 50,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Icon(
                          Icons.exit_to_app,
                          color: Colors.grey.shade600,
                        ),
                        Text(
                          'Logout',
                          style: TextStyle(color: Colors.grey.shade600),
                        )
                      ],
                    ),
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
