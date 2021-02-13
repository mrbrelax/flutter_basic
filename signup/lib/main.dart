import 'package:flutter/material.dart';
import 'package:signup/images.dart';

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
        primaryColor: Colors.green,
        accentColor: Colors.greenAccent,
        primaryColorLight: Colors.lightGreen,
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
      body: ConstrainedBox(
        constraints: BoxConstraints(
          maxHeight: MediaQuery.of(context).size.height,
        ),
        child: SingleChildScrollView(
          child: Container(
            color: Colors.green,
            height: MediaQuery.of(context).size.height,
            width: double.infinity,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                SizedBox(height: 26.0),
                Padding(
                  padding: const EdgeInsets.only(
                    top: 0.0,
                    right: 0.0,
                    left: 20.0,
                    bottom: 20.0,
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: <Widget>[
                      Container(
                        height: 75.0,
                        width: 75.0,
                        decoration: BoxDecoration(
                          image: DecorationImage(
                            image: AssetImage(logo),
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                      SizedBox(height: 8.0),
                      Text(
                        'SignUp',
                        style: TextStyle(fontSize: 28.0, color: Colors.white),
                      ),
                      SizedBox(height: 8.0),
                      Text(
                        'Welcome',
                        style: TextStyle(
                          fontSize: 16.0,
                          color: Colors.white,
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 4.0),
                Expanded(
                  child: Container(
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(26.0),
                        topRight: Radius.circular(26.0),
                      ),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.only(
                        top: 20.0,
                        right: 20.0,
                        left: 20.0,
                        bottom: 0.0,
                      ),
                      child: Column(
                        children: <Widget>[
                          Container(
                            height: MediaQuery.of(context).size.height / 1.5,
                            width: MediaQuery.of(context).size.width,
                            padding: EdgeInsets.only(
                              top: 40.0,
                              bottom: 32.0,
                            ),
                            child: Column(
                              children: <Widget>[
                                Container(
                                  padding: EdgeInsets.only(
                                    top: 0.0,
                                    bottom: 0.0,
                                    left: 16.0,
                                    right: 16.0,
                                  ),
                                  height: 45.0,
                                  width:
                                      MediaQuery.of(context).size.width / 1.2,
                                  decoration: BoxDecoration(
                                    color: Colors.green,
                                    borderRadius: BorderRadius.all(
                                      Radius.circular(10.0),
                                    ),
                                    boxShadow: [
                                      BoxShadow(
                                        color: Colors.black12,
                                        blurRadius: 5.0,
                                      ),
                                    ],
                                  ),
                                  child: TextField(
                                    textInputAction: TextInputAction.next,
                                    keyboardType: TextInputType.name,
                                    cursorColor: Colors.white,
                                    style: TextStyle(color: Colors.white),
                                    decoration: InputDecoration(
                                      border: InputBorder.none,
                                      icon: Icon(
                                        Icons.person,
                                        color: Colors.white,
                                      ),
                                      hintText: 'Full Name',
                                      hintStyle: TextStyle(
                                        color: Colors.white,
                                        fontStyle: FontStyle.italic,
                                      ),
                                    ),
                                  ),
                                ),
                                Container(
                                  padding: EdgeInsets.only(
                                    top: 0.0,
                                    bottom: 0.0,
                                    left: 16.0,
                                    right: 16.0,
                                  ),
                                  margin: EdgeInsets.only(top: 16.0),
                                  height: 45.0,
                                  width:
                                      MediaQuery.of(context).size.width / 1.2,
                                  decoration: BoxDecoration(
                                    color: Colors.green,
                                    borderRadius: BorderRadius.all(
                                      Radius.circular(10.0),
                                    ),
                                    boxShadow: [
                                      BoxShadow(
                                        color: Colors.black12,
                                        blurRadius: 5.0,
                                      ),
                                    ],
                                  ),
                                  child: TextField(
                                    textInputAction: TextInputAction.next,
                                    keyboardType: TextInputType.emailAddress,
                                    cursorColor: Colors.white,
                                    style: TextStyle(color: Colors.white),
                                    decoration: InputDecoration(
                                      border: InputBorder.none,
                                      icon: Icon(
                                        Icons.email,
                                        color: Colors.white,
                                      ),
                                      hintText: 'Email',
                                      hintStyle: TextStyle(
                                        color: Colors.white,
                                        fontStyle: FontStyle.italic,
                                      ),
                                    ),
                                  ),
                                ),
                                Container(
                                  padding: EdgeInsets.only(
                                    top: 0.0,
                                    bottom: 0.0,
                                    left: 16.0,
                                    right: 16.0,
                                  ),
                                  margin: EdgeInsets.only(top: 16.0),
                                  height: 45.0,
                                  width:
                                      MediaQuery.of(context).size.width / 1.2,
                                  decoration: BoxDecoration(
                                    color: Colors.green,
                                    borderRadius: BorderRadius.all(
                                      Radius.circular(10.0),
                                    ),
                                    boxShadow: [
                                      BoxShadow(
                                        color: Colors.black12,
                                        blurRadius: 5.0,
                                      ),
                                    ],
                                  ),
                                  child: TextField(
                                    textInputAction: TextInputAction.next,
                                    keyboardType: TextInputType.text,
                                    obscureText: _isHidden,
                                    cursorColor: Colors.white,
                                    style: TextStyle(color: Colors.white),
                                    decoration: InputDecoration(
                                      border: InputBorder.none,
                                      icon: Icon(
                                        Icons.lock,
                                        color: Colors.white,
                                      ),
                                      hintText: 'Password',
                                      hintStyle: TextStyle(
                                        color: Colors.white,
                                        fontStyle: FontStyle.italic,
                                      ),
                                      suffix: InkWell(
                                        onTap: _togglePasswordView,
                                        child: Icon(
                                          _isHidden
                                              ? Icons.visibility
                                              : Icons.visibility_off,
                                              color: Colors.white,
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                                Spacer(),
                                Container(
                                  padding: EdgeInsets.only(
                                    top: 0.0,
                                    bottom: 16.0,
                                    left: 16.0,
                                    right: 16.0,
                                  ),
                                  width: double.infinity,
                                  child: RaisedButton(
                                    onPressed: () {},
                                    elevation: 5.0,
                                    color: Colors.green,
                                    padding: EdgeInsets.all(16.0),
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(10.0),
                                    ),
                                    child: Text(
                                      'Sign Up'.toUpperCase(),
                                      style: TextStyle(
                                        color: Colors.white,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                  ),
                                ),
                                FlatButton(
                                  onPressed: () {},
                                  highlightColor: Colors.transparent,
                                  child: Text(
                                    'Already have an account ?',
                                    style: TextStyle(
                                      fontSize: 16.0,
                                      color: Colors.green,
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
