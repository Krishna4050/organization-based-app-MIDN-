import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
//import 'package:http/http.dart' as http;
import 'dart:convert';
import 'dart:async';
import 'package:fluttertoast/fluttertoast.dart';
import 'login_icons.dart';
//import 'index.dart';
import 'package:dio/dio.dart';

void main() => runApp(LoginPage());

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  bool _togglevisibility = true;
  TextEditingController unameController = new TextEditingController(text: "");
  TextEditingController passwordController =
      new TextEditingController(text: "");

  /*    Future<List> _login async {
    final response = await http.post("http://10.0.2.2/midn/sign.php", body: {
      "email":unameController.text,
      "password":passwordController.text,
      
    });
    print(response.body);
  } */

  

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: new AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0.0,
        iconTheme: new IconThemeData(color: Color(0xFF18D191)),
        /* routes: <string.WidgetBuilder>{
        '/index':(BuildContext context)=> new index(),
        }, */
      ),
      body: SingleChildScrollView(
        /* width: double.infinity, */

        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            new Logoimage(),
            new Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.only(top: 0.0, bottom: 15.0),
                  child: new Text(
                    "Login",
                    style: new TextStyle(fontSize: 30.0),
                  ),
                )
              ],
            ),
            Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: 30.0, vertical: 0.0),
              child: new TextField(
                controller: unameController,
                decoration: InputDecoration(labelText: "Email"),

                // validator: _validateEmail,
                keyboardType: TextInputType.emailAddress,
              ),
            ),
            new SizedBox(
              height: 13.0,
            ),
            Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: 30.0, vertical: 0.0),
              child: new TextField(
                controller: passwordController,
                obscureText: _togglevisibility,
                decoration: InputDecoration(labelText: "Password",
                 suffixIcon:IconButton(
                   onPressed: (){
                     setState(() {
                       _togglevisibility = !_togglevisibility;
                     });
                   },
                  icon: _togglevisibility? Icon(Icons.visibility_off) : Icon(Icons.visibility),
                 ),
                ),
                // validator: _validatePassword,
               
              ),
            ),
            new Row(
              children: <Widget>[
                Expanded(
                  child: Padding(
                    padding:
                        const EdgeInsets.only(left: 10.0, right: 19.0, top: 10),
                    child: GestureDetector(
                      onTap: () {
                        String uname = unameController.text;
                        String password = passwordController.text;
                        /* bool isEmail(String un) {
                          String p =
                              r'^(([^<>()[\]\\.,;:\s@\"]+(\.[^<>()[\]\\.,;:\s@\"]+)*)|(\".+\"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$';

                          RegExp regExp = new RegExp(p);

                          return regExp.hasMatch(un);
                        } */

                        print(uname + " " + password);
                        if (uname.isEmpty) {
                          showToast("Please enter valid username");
                        } else if (password.length < 6) {
                          showToast("Password must be more than 6 character");
                        }
                        /* else {
                          //showToast("Logged in");
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => HomePage()));
                                  
                        } */

                        //Navigator.push(context, MaterialPageRoute(
                        // builder: (context) => HomePage()
                        // ));
                        /* String s = unameController.text;
                        if (s != '') {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => HomePage()));
                        } else {
                          return "Email and Passwort Doesn't Match";
                        } */
                      },
                      child: new Container(
                        alignment: Alignment.center,
                        height: 49.0,
                        decoration: new BoxDecoration(
                          color: Color(0xFF18D191),
                          borderRadius: new BorderRadius.circular(19.0),
                        ),
                        child: new Text("Login",
                            style: new TextStyle(
                                fontSize: 23.0,
                                color: Colors.white,
                                fontWeight: FontWeight.bold)),
                      ),
                    ),
                  ),
                ),
                Expanded(
                  child: Padding(
                    padding:
                        const EdgeInsets.only(left: 0.0, right: 20.0, top: 10),
                    child: new Container(
                      alignment: Alignment.center,
                      height: 50.0,
                      /* decoration: new BoxDecoration(
                        color: Color(0xFFDF5138),
                        borderRadius: new BorderRadius.circular(19.0),
                      ), */
                      child: new Text("Forgot Password?",
                          style: new TextStyle(
                              fontSize: 17.0,
                              color: Color(0xFF18D191),
                              fontWeight: FontWeight.bold)),
                    ),
                  ),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.only(top: 25.0),
              child: new Text("Create A New Account",
                  style: new TextStyle(
                      fontSize: 20.0,
                      color: Colors.red,
                      fontWeight: FontWeight.bold)),
            ),
          ],
        ),
      ),
    );
  }

  /* Future getData() async {
    var url = 'http://10.0.2.2/midn/sign.php';
    http.Response response = await http.get(url);
    var data = jsonDecode(response.body);
    print(data.toString());
  } */
  /*  @override
  void initState() {
      getData();
    } */
}

Future register() async {
    // var url = 'http://10.0.2.2/midn/sign.php';
    try{
        //Dio dio = new Dio();
        FormData formData = new FormData.from(
          {
            "action":"register",
            "email":"unameController.text",
            "password":"passwordController.text",
          }
        );
    
    
    Response response =
        await Dio().post('http://10.0.2.2/midn/sign.php', data: formData);
    Map valueMap = json.decode(response.data);
   // bool success = valueMap['success'];
    //return success;
    if(valueMap['success']){
        showToast("Register successfully");
        //return success;
     }

    } catch(e){
      print(e.toString());
    }
    
    //print(data.toString());
  }

showToast(String s) {
  Fluttertoast.showToast(
      msg: s,
      toastLength: Toast.LENGTH_SHORT,
      gravity: ToastGravity.CENTER,
      timeInSecForIos: 3,
      backgroundColor: Colors.red,
      textColor: Colors.white,
      fontSize: 16.0);
}
