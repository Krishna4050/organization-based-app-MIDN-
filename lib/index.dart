import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _navIndex=0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: new BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        fixedColor: Colors.blue,
        currentIndex: _navIndex,
        onTap: (int index){
          setState(() {
             _navIndex = index;
          });
        },
        items: [
          new BottomNavigationBarItem(
            title: Text(""),
            icon: Icon(Icons.home)
          ),
           new BottomNavigationBarItem(
            title: Text(""),
            icon: Icon(Icons.message)
          ),
          new BottomNavigationBarItem(
            title: Text(""),
            icon: Icon(Icons.notifications)
          ),
           new BottomNavigationBarItem(
            title: Text(""),
            icon: Icon(Icons.account_circle)
          ),
        ],

      ),
      appBar: new AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0.0,
        iconTheme: new IconThemeData(color: Color(0xFF18D191)),
      ),
      body: NewsFeed(),
    );
  }
}

class NewsFeed extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: <Widget>[
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20.0),
          child: Container(
              child: Column(
            children: <Widget>[
              Row(
                children: <Widget>[
                  new Text(
                    "Content",
                    style: new TextStyle(
                      fontSize: 25.0,
                    ),
                    textAlign: TextAlign.left,
                  ),
                ],
              ),
              new SizedBox(
                height: 10.0,
              ),
              Row(
                children: <Widget>[
                  new Expanded(
                      child: Padding(
                        padding: const EdgeInsets.only(right: 5.0),
                        child: Container(
                    height: 100.0,
                    decoration: new BoxDecoration(
                        borderRadius: new BorderRadius.circular(5.0),
                        color: Colors.pink,
                    ),
                    child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          new Icon(
                            Icons.book,
                            color: Colors.black,
                          ),
                          new Text(
                            "Book",
                            style: new TextStyle(
                              color: Colors.white,
                            ),
                          )
                        ],
                    ),
                  ),
                      )),
                  new Expanded(
                    child: Container(
                      height: 100.0,
                      /* decoration: new BoxDecoration(
                        borderRadius: new BorderRadius.circular(5.0),
                        color: Color(0xFFFD7384)
                      ), 
                      child: Column(
                         mainAxisAlignment: MainAxisAlignment.center,
                         children: <Widget>[
                          new Icon(Icons.book, color: Colors.black,),
                          new Text("Book", style: new TextStyle(color: Colors.white,),)
                        ],
                      ), */
                      child: Column(
                        children: <Widget>[
                          Expanded(
                            child: Padding(
                              padding: const EdgeInsets.only(right:2.5, bottom: 2.5),
                              child: new Container(
                                decoration: new BoxDecoration(
                                  borderRadius: new BorderRadius.circular(5.0),
                                  color: Color(0xFF2BD093),
                                ),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: <Widget>[
                                    Padding(
                                      padding: const EdgeInsets.only(right: 5.0),
                                      child: new Icon(
                                        Icons.assessment,
                                        color: Colors.black,
                                      ),
                                    ),
                                    new Text(
                                      "Assessment",
                                      style: new TextStyle(
                                        color: Colors.white,
                                        fontSize: 11.0,
                                      ),
                                    )
                                  ],
                                ),
                              ),
                            ),
                          ),
                          Expanded(
                            child: Padding(
                              padding: const EdgeInsets.only(right: 2.5,bottom: 2.5),
                              child: new Container(
                                decoration: new BoxDecoration(
                                  borderRadius: new BorderRadius.circular(5.0),
                                  color: Colors.blue,
                                ),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: <Widget>[
                                    Padding(
                                      padding: const EdgeInsets.only(right: 5.0),
                                      child: new Icon(
                                        Icons.calendar_today,
                                        color: Colors.black,
                                      ),
                                    ),
                                    new Text(
                                      "Calender",
                                      style: new TextStyle(
                                        color: Colors.white,
                                        fontSize: 11.0,
                                      ),
                                    )
                                  ],
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  new Expanded(
                    child: Container(
                      height: 100.0,
                      /* decoration: new BoxDecoration(
                        borderRadius: new BorderRadius.circular(5.0),
                        color: Color(0xFFFD7384)
                      ), 
                      child: Column(
                         mainAxisAlignment: MainAxisAlignment.center,
                         children: <Widget>[
                          new Icon(Icons.book, color: Colors.black,),
                          new Text("Book", style: new TextStyle(color: Colors.white,),)
                        ],
                      ), */
                      child: Column(
                        children: <Widget>[
                          Expanded(
                            child: Padding(
                              padding: const EdgeInsets.only(left:2.5, bottom: 2.5 ),
                              child: new Container(
                                decoration: new BoxDecoration(
                                  borderRadius: new BorderRadius.circular(5.0),
                                  color: Colors.blueGrey,
                                ),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: <Widget>[
                                    Padding(
                                      padding: const EdgeInsets.only(right: 5.0),
                                      child: new Icon(
                                        Icons.person,
                                        color: Colors.black,
                                      ),
                                    ),
                                    new Text(
                                      "Members",
                                      style: new TextStyle(
                                        color: Colors.white,
                                        fontSize: 11.0,
                                      ),
                                    )
                                  ],
                                ),
                              ),
                            ),
                          ),
                          Expanded(
                            child: Padding(
                              padding: const EdgeInsets.only(left: 2.5, bottom: 2.5),
                              child: new Container(
                                decoration: new BoxDecoration(
                                  borderRadius: new BorderRadius.circular(5.0),
                                  color: Colors.orange,
                                ),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: <Widget>[
                                    Padding(
                                      padding: const EdgeInsets.only(right: 5.0),
                                      child: new Icon(
                                        Icons.insert_emoticon,
                                        color: Colors.black,
                                      ),
                                    ),
                                    new Text(
                                      "About",
                                      style: new TextStyle(
                                        color: Colors.white,
                                        fontSize: 11.0,
                                      ),
                                    )
                                  ],
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),

                  /* new Expanded(
                      child: Container(
                    height: 100.0,
                     decoration: new BoxDecoration(
                        borderRadius: new BorderRadius.circular(5.0),
                        color: Color(0xFFFD7384)
                      ), 
                      child: Column(
                         mainAxisAlignment: MainAxisAlignment.center,
                         children: <Widget>[
                          new Icon(Icons.book, color: Colors.black,),
                          new Text("Book", style: new TextStyle(color: Colors.white,),)
                        ], 
                      ),  
                  )), */
                ],
              ),
              Row(
                children: <Widget>[
                  new Expanded(
                    child: Padding(
                      padding: const EdgeInsets.only(top: 10.0),
                      child: new Text("News Feed", style: TextStyle(
                        fontSize: 20.0, color: Colors.blue, fontWeight: FontWeight.bold,
                      ),),
                    ),
                  )
                ],
              )
            ],
          )),
        )
      ],
    );
  }
}
