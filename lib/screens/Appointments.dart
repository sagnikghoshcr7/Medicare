import 'package:flutter/material.dart';

import '../navigatorAnimation/bouncinganagivation.dart';
import 'Home_Screen.dart';

class Appointments extends StatelessWidget {
  Appointments({
    Key key,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: new AppBar(
        leading: new IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.push(
              context,
              FadeNavigation(
                widget: CreateAccount(),
              ),
            );
          },
        ),
        titleSpacing: 0.0,
        title: new Text("Appoinments"),
        centerTitle: true,
        actions: <Widget>[
          Padding(
            padding: EdgeInsets.all(15.0),
            child: new Icon(Icons.chat),
          ),
        ],
      ),
      backgroundColor: Colors.blue[100],
      body: ListView(
        children: <Widget>[
          Container(
            child: Column(
              children: <Widget>[
                Padding(
                  padding: EdgeInsets.all(23.0),
                  child: Container(
                    child: Form(
                      autovalidate: true,
                      child: TextFormField(
                        decoration: InputDecoration(
                          border: OutlineInputBorder(),
                          icon: Icon(Icons.search),
                          labelText: "Find a medicine",
                          labelStyle: TextStyle(fontSize: 15.0),
                          hintText: "Must be at least 3 characters",
                        ),
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.all(19.0),
                  child: Card(
                    color: Colors.green[50],
                    shape: BeveledRectangleBorder(
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: <Widget>[
                        const ListTile(
                          leading: Icon(Icons.calendar_today),
                          title: Text(
                            'Design Meeting',
                            style: TextStyle(
                              fontSize: 20,
                              color: Colors.green,
                            ),
                          ),
                          subtitle: Text('Today : 10:00 - 11.30'),
                        ),
                        ButtonBar(
                          children: <Widget>[
                            Row(
                              children: <Widget>[
                                Row(
                                  children: [
                                    Container(
                                      height: 42.00,
                                      width: 43.00,
                                      decoration: BoxDecoration(
                                        image: DecorationImage(
                                          image: AssetImage(
                                              "assets/images/Sagnik.jpg"),
                                        ),
                                        border: Border.all(
                                          width: 1.00,
                                          color: Color(0xff707070),
                                        ),
                                        borderRadius: BorderRadius.all(
                                            Radius.elliptical(43.00, 42.00)),
                                      ),
                                    ),
                                  ],
                                ),
                                Row(
                                  children: [
                                    Container(
                                      height: 42.00,
                                      width: 43.00,
                                      decoration: BoxDecoration(
                                        image: DecorationImage(
                                          image: AssetImage(
                                              "assets/images/Arnab.jpg"),
                                        ),
                                        border: Border.all(
                                          width: 1.00,
                                          color: Color(0xff707070),
                                        ),
                                        borderRadius: BorderRadius.all(
                                            Radius.elliptical(43.00, 42.00)),
                                      ),
                                    ),
                                  ],
                                ),
                                Row(
                                  children: [
                                    Container(
                                      height: 42.00,
                                      width: 43.00,
                                      decoration: BoxDecoration(
                                        image: DecorationImage(
                                          image: AssetImage(
                                              "assets/images/Sbh.jpg"),
                                        ),
                                        border: Border.all(
                                          width: 1.00,
                                          color: Color(0xff707070),
                                        ),
                                        borderRadius: BorderRadius.all(
                                            Radius.elliptical(43.00, 42.00)),
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                            Column(
                              children: <Widget>[
                                Row(
                                  children: <Widget>[
                                    FlatButton(
                                      child: Icon(Icons.call),
                                      onPressed: () {/* ... */},
                                    ),
                                    FlatButton(
                                      child: Icon(Icons.video_call),
                                      onPressed: () {/* ... */},
                                    ),
                                    FlatButton(
                                      child: Icon(Icons.chat),
                                      onPressed: () {/* ... */},
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.all(19.0),
                  child: Card(
                    color: Colors.red[50],
                    shape: BeveledRectangleBorder(
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: <Widget>[
                        const ListTile(
                          leading: Icon(Icons.calendar_today),
                          title: Text(
                            'Development Meeting',
                            style: TextStyle(
                              fontSize: 20,
                              color: Colors.red,
                            ),
                          ),
                          subtitle: Text('Today : 10:00 - 11.30'),
                        ),
                        ButtonBar(
                          children: <Widget>[
                            Row(
                              children: <Widget>[
                                Row(
                                  children: [
                                    Container(
                                      height: 42.00,
                                      width: 43.00,
                                      decoration: BoxDecoration(
                                        image: DecorationImage(
                                          image: AssetImage(
                                              "assets/images/Sagnik.jpg"),
                                        ),
                                        border: Border.all(
                                          width: 1.00,
                                          color: Color(0xff707070),
                                        ),
                                        borderRadius: BorderRadius.all(
                                            Radius.elliptical(43.00, 42.00)),
                                      ),
                                    ),
                                  ],
                                ),
                                Row(
                                  children: [
                                    Container(
                                      height: 42.00,
                                      width: 43.00,
                                      decoration: BoxDecoration(
                                        image: DecorationImage(
                                          image: AssetImage(
                                              "assets/images/Arnab.jpg"),
                                        ),
                                        border: Border.all(
                                          width: 1.00,
                                          color: Color(0xff707070),
                                        ),
                                        borderRadius: BorderRadius.all(
                                            Radius.elliptical(43.00, 42.00)),
                                      ),
                                    ),
                                  ],
                                ),
                                Row(
                                  children: [
                                    Container(
                                      height: 42.00,
                                      width: 43.00,
                                      decoration: BoxDecoration(
                                        image: DecorationImage(
                                          image: AssetImage(
                                              "assets/images/Sbh.jpg"),
                                        ),
                                        border: Border.all(
                                          width: 1.00,
                                          color: Color(0xff707070),
                                        ),
                                        borderRadius: BorderRadius.all(
                                            Radius.elliptical(43.00, 42.00)),
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                            Column(
                              children: <Widget>[
                                Row(
                                  children: <Widget>[
                                    FlatButton(
                                      child: Icon(Icons.call),
                                      onPressed: () {/* ... */},
                                    ),
                                    FlatButton(
                                      child: Icon(Icons.video_call),
                                      onPressed: () {/* ... */},
                                    ),
                                    FlatButton(
                                      child: Icon(Icons.chat),
                                      onPressed: () {/* ... */},
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.all(19.0),
                  child: Card(
                    color: Colors.purple[50],
                    shape: BeveledRectangleBorder(
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: <Widget>[
                        const ListTile(
                          leading: Icon(Icons.calendar_today),
                          title: Text(
                            'Development Meeting',
                            style: TextStyle(
                              fontSize: 20,
                              color: Colors.purple,
                            ),
                          ),
                          subtitle: Text('Today : 10:00 - 11.30'),
                        ),
                        ButtonBar(
                          children: <Widget>[
                            Row(
                              children: <Widget>[
                                Row(
                                  children: [
                                    Container(
                                      height: 42.00,
                                      width: 43.00,
                                      decoration: BoxDecoration(
                                        image: DecorationImage(
                                          image: AssetImage(
                                              "assets/images/Sagnik.jpg"),
                                        ),
                                        border: Border.all(
                                          width: 1.00,
                                          color: Color(0xff707070),
                                        ),
                                        borderRadius: BorderRadius.all(
                                            Radius.elliptical(43.00, 42.00)),
                                      ),
                                    ),
                                  ],
                                ),
                                Row(
                                  children: [
                                    Container(
                                      height: 42.00,
                                      width: 43.00,
                                      decoration: BoxDecoration(
                                        image: DecorationImage(
                                          image: AssetImage(
                                              "assets/images/Arnab.jpg"),
                                        ),
                                        border: Border.all(
                                          width: 1.00,
                                          color: Color(0xff707070),
                                        ),
                                        borderRadius: BorderRadius.all(
                                            Radius.elliptical(43.00, 42.00)),
                                      ),
                                    ),
                                  ],
                                ),
                                Row(
                                  children: [
                                    Container(
                                      height: 42.00,
                                      width: 43.00,
                                      decoration: BoxDecoration(
                                        image: DecorationImage(
                                          image: AssetImage(
                                              "assets/images/Sbh.jpg"),
                                        ),
                                        border: Border.all(
                                          width: 1.00,
                                          color: Color(0xff707070),
                                        ),
                                        borderRadius: BorderRadius.all(
                                            Radius.elliptical(43.00, 42.00)),
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                            Column(
                              children: <Widget>[
                                Row(
                                  children: <Widget>[
                                    FlatButton(
                                      child: Icon(Icons.call),
                                      onPressed: () {/* ... */},
                                    ),
                                    FlatButton(
                                      child: Icon(Icons.video_call),
                                      onPressed: () {/* ... */},
                                    ),
                                    FlatButton(
                                      child: Icon(Icons.chat),
                                      onPressed: () {/* ... */},
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.all(23.0),
                  child: Card(
                    color: Colors.cyanAccent[50],
                    clipBehavior: Clip.antiAlias,
                    shape: BeveledRectangleBorder(
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: <Widget>[
                                FlatButton(
                                  child: Icon(Icons.add),
                                  onPressed: () {/* ... */},
                                ),
                              ],
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: <Widget>[
                                Text(
                                  "Add New Task\n",
                                  style: TextStyle(
                                    fontFamily: 'Segoe UI',
                                    fontSize: 15,
                                    color: Colors.blue,
                                    fontWeight: FontWeight.w700,
                                  ),
                                ),
                              ],
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
