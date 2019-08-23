import 'package:flutter/material.dart';
import 'login.dart';

void main() => runApp(MaterialApp(
      debugShowCheckedModeBanner: false,
      home: OrgApp(),
    ));

class OrgApp extends StatefulWidget {
  @override
  _OrgAppState createState() => _OrgAppState();
}

class _OrgAppState extends State<OrgApp> {
  String name = "Welcome";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      /* appBar: AppBar(
        title: Text(""),
      ), */
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage("img/background.jpg"),
            fit: BoxFit.cover,
          ),
        ),
        /* padding: EdgeInsets.only(top:8.0, bottom:80.0), */
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.only(top: 8.0, bottom: 80.0),
              child: Image.asset(
                "img/logo.png",
                height: 190.0,
              ),
            ),
            new Row(
              children: <Widget>[
                Expanded(
                  child: Padding(
                    padding:
                        const EdgeInsets.only(left: 20.0, right: 10.0, top: 10),
                    child: GestureDetector(
                      onTap: () {
                        Navigator.push(context, MaterialPageRoute(
                          builder: (context) => LoginPage(),
                        ));
                      },
                      child: new Container(
                        alignment: Alignment.center,
                        height: 60.0,
                        decoration: new BoxDecoration(
                          color: Color(0xFF18D191),
                          borderRadius: new BorderRadius.circular(19.0),
                        ),
                        child: new Text("Sign in With Email",
                            style: new TextStyle(
                                fontSize: 23.0,
                                color: Colors.white,
                                fontWeight: FontWeight.bold)),
                      ),
                    ),
                  ),
                )
              ],
            ),
            new Row(
              children: <Widget>[
                Expanded(
                  child: Padding(
                    padding:
                        const EdgeInsets.only(left: 10.0, right: 10.0, top: 10),
                    child: new Container(
                      alignment: Alignment.center,
                      height: 60.0,
                      decoration: new BoxDecoration(
                        color: Color(0xFF4364A1),
                        borderRadius: new BorderRadius.circular(19.0),
                      ),
                      child: new Text("FaceBook",
                          style: new TextStyle(
                              fontSize: 23.0,
                              color: Colors.white,
                              fontWeight: FontWeight.bold)),
                    ),
                  ),
                ),
                Expanded(
                  child: Padding(
                    padding:
                        const EdgeInsets.only(left: 20.0, right: 5.0, top: 10),
                    child: new Container(
                      alignment: Alignment.center,
                      height: 60.0,
                      decoration: new BoxDecoration(
                        color: Color(0xFFDF5138),
                        borderRadius: new BorderRadius.circular(19.0),
                      ),
                      child: new Text("Google",
                          style: new TextStyle(
                              fontSize: 23.0,
                              color: Colors.white,
                              fontWeight: FontWeight.bold)),
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
