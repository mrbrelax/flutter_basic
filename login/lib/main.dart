import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(),
      theme: ThemeData(
        primaryColor: Colors.blue,
        accentColor: Colors.blueAccent,
        primaryColorLight: Colors.lightBlue,
      ),
    );
  }
}

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  bool _isHidden = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: ConstrainedBox(
          constraints: BoxConstraints(
            maxHeight: MediaQuery.of(context).size.height,
          ),
          child: Container(
            height: MediaQuery.of(context).size.height,
            width: double.infinity,
            color: Colors.blue,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                SizedBox(height: 100.0),
                Padding(
                  padding: const EdgeInsets.only(
                    top: 0.0,
                    bottom: 0.0,
                    left: 20.0,
                    right: 0.0,
                  ),
                  child: Text(
                    'Sign In',
                    style: TextStyle(
                      fontSize: 28.0,
                      color: Colors.white,
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(
                    top: 0.0,
                    bottom: 0.0,
                    left: 20.0,
                    right: 0.0,
                  ),
                  child: Text(
                    'Welcome Back',
                    style: TextStyle(
                      fontSize: 14.0,
                      color: Colors.white,
                    ),
                  ),
                ),
                SizedBox(height: 40.0),
                Expanded(
                  child: Container(
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(35.0),
                        topRight: Radius.circular(100.0),
                      ),
                    ),
                    child: Padding(
                      padding: EdgeInsets.only(
                        top: 20.0,
                        bottom: 0.0,
                        right: 20.0,
                        left: 20.0,
                      ),
                      child: Column(
                        children: <Widget>[
                          Container(
                            height: MediaQuery.of(context).size.height / 1.5,
                            width: MediaQuery.of(context).size.width,
                            padding: EdgeInsets.only(top: 60.0),
                            child: Column(
                              children: <Widget>[
                                Container(
                                  width:
                                      MediaQuery.of(context).size.width / 1.2,
                                  height: 50.0,
                                  padding: EdgeInsets.only(
                                    top: 0.0,
                                    bottom: 0.0,
                                    left: 16.0,
                                    right: 16.0,
                                  ),
                                  margin: EdgeInsets.only(top: 16.0),
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.only(
                                      topRight: Radius.circular(15.0),
                                      topLeft: Radius.circular(0.0),
                                      bottomRight: Radius.circular(0.0),
                                      bottomLeft: Radius.circular(15.0),
                                    ),
                                    color: Colors.white,
                                    boxShadow: [
                                      BoxShadow(
                                        color: Colors.black12,
                                        blurRadius: 5.0,
                                      ),
                                    ],
                                  ),
                                  child: TextField(
                                    cursorColor: Colors.black,
                                    textInputAction: TextInputAction.next,
                                    keyboardType: TextInputType.emailAddress,
                                    decoration: InputDecoration(
                                      border: InputBorder.none,
                                      hintText: 'Email',
                                      icon: Icon(
                                        Icons.mail,
                                        color: Colors.blue,
                                      ),
                                      hintStyle: TextStyle(
                                        color: Colors.black,
                                        fontStyle: FontStyle.italic,
                                      ),
                                    ),
                                  ),
                                ),
                                SizedBox(height: 20.0),
                                Container(
                                  width:
                                      MediaQuery.of(context).size.width / 1.2,
                                  height: 50.0,
                                  padding: EdgeInsets.only(
                                    top: 0.0,
                                    bottom: 0.0,
                                    left: 16.0,
                                    right: 16.0,
                                  ),
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.only(
                                      topRight: Radius.circular(15.0),
                                      topLeft: Radius.circular(0.0),
                                      bottomRight: Radius.circular(0.0),
                                      bottomLeft: Radius.circular(15.0),
                                    ),
                                    color: Colors.white,
                                    boxShadow: [
                                      BoxShadow(
                                        color: Colors.black12,
                                        blurRadius: 5.0,
                                      ),
                                    ],
                                  ),
                                  child: TextField(
                                    obscureText: _isHidden,
                                    cursorColor: Colors.black,
                                    textInputAction: TextInputAction.next,
                                    keyboardType: TextInputType.text,
                                    decoration: InputDecoration(
                                      border: InputBorder.none,
                                      hintText: 'Password',
                                      icon: Icon(
                                        Icons.lock,
                                        color: Colors.blue,
                                      ),
                                      hintStyle: TextStyle(
                                        color: Colors.black,
                                        fontStyle: FontStyle.italic,
                                      ),
                                      suffixIcon: InkWell(
                                        onTap: _togglePasswordView,
                                        child: Icon(
                                          _isHidden
                                              ? Icons.visibility
                                              : Icons.visibility_off,
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(top: 16.0),
                                  child: Align(
                                    alignment: Alignment.centerRight,
                                    child: FlatButton(
                                      color: Colors.white,
                                      highlightColor: Colors.transparent,
                                      onPressed: () {},
                                      child: Text(
                                        'Forgot Password ?',
                                        style: TextStyle(
                                          color: Colors.black,
                                          fontSize: 15.0,
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                                Spacer(),
                                Container(
                                  padding: EdgeInsets.only(
                                    top: 0.0,
                                    bottom: 0.0,
                                    right: 16.0,
                                    left: 16.0,
                                  ),
                                  width: double.infinity,
                                  child: RaisedButton(
                                    elevation: 5.0,
                                    color: Colors.blue,
                                    padding: EdgeInsets.all(15.0),
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.only(
                                        bottomLeft: Radius.circular(15.0),
                                        bottomRight: Radius.circular(0.0),
                                        topLeft: Radius.circular(0.0),
                                        topRight: Radius.circular(15.0),
                                      ),
                                    ),
                                    onPressed: () {},
                                    child: Text(
                                      'Sign In'.toUpperCase(),
                                      style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        color: Colors.white,
                                      ),
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsets.only(top: 16.0),
                                  child: Align(
                                    alignment: Alignment.center,
                                    child: FlatButton(
                                      color: Colors.white,
                                      highlightColor: Colors.transparent,
                                      onPressed: () {},
                                      child: Text(
                                        "Don't have an account ? Sign Up",
                                        style: TextStyle(
                                          color: Colors.black,
                                          fontSize: 15.0,
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  void _togglePasswordView() {
    setState(() {
      _isHidden = !_isHidden;
    });
  }
}
