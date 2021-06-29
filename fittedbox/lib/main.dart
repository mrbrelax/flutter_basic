import 'package:fittedbox/images.dart';
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
  @override
  Widget build(BuildContext context) {
    String title = "FittedBox";
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
        centerTitle: true,
      ),
      body: ListView(
        scrollDirection: Axis.vertical,
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: FittedBox(
              child: Material(
                color: Colors.white,
                borderRadius: BorderRadius.circular(24.0),
                shadowColor: Colors.blue,
                elevation: 14.0,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Container(
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: <Widget>[
                            Container(
                              child: Text(
                                'Anatasya',
                                style: TextStyle(
                                  color: Colors.blue,
                                  fontSize: 24.0,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                            Row(
                              children: <Widget>[
                                Container(
                                  child: Text(
                                    'Project :',
                                    style: TextStyle(
                                      color: Colors.black54,
                                      fontSize: 18.0,
                                    ),
                                  ),
                                ),
                                Container(
                                  child: Text(
                                    'Selbgram',
                                    style: TextStyle(
                                      fontSize: 18.0,
                                      color: Colors.black54,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            Container(
                              child: Text(
                                'Brand Ambassador of MONK CLOUD',
                                style: TextStyle(
                                  color: Colors.black54,
                                  fontSize: 18.0,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Container(
                      width: 180.0,
                      height: 200.0,
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(24.0),
                        child: Image(
                          image: AssetImage(anatasya),
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: FittedBox(
              child: Material(
                color: Colors.white,
                borderRadius: BorderRadius.circular(24.0),
                shadowColor: Colors.blue,
                elevation: 14.0,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Container(
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: <Widget>[
                            Container(
                              child: Text(
                                'Eva Elfie',
                                style: TextStyle(
                                  color: Colors.blue,
                                  fontSize: 24.0,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                            Row(
                              children: <Widget>[
                                Container(
                                  child: Text(
                                    'Project :',
                                    style: TextStyle(
                                      color: Colors.black54,
                                      fontSize: 18.0,
                                    ),
                                  ),
                                ),
                                Container(
                                  child: Text(
                                    'Artis, Selebgram',
                                    style: TextStyle(
                                      fontSize: 18.0,
                                      color: Colors.black54,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            Container(
                              child: Text(
                                'Artis on PornHub Your Favorite',
                                style: TextStyle(
                                  color: Colors.black54,
                                  fontSize: 18.0,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Container(
                      width: 150.0,
                      height: 200.0,
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(24.0),
                        child: Image(
                          image: AssetImage(eva),
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: FittedBox(
              child: Material(
                color: Colors.white,
                borderRadius: BorderRadius.circular(24.0),
                shadowColor: Colors.blue,
                elevation: 14.0,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Container(
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: <Widget>[
                            Container(
                              child: Text(
                                'Nabila Ayu',
                                style: TextStyle(
                                  color: Colors.blue,
                                  fontSize: 24.0,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                            Row(
                              children: <Widget>[
                                Container(
                                  child: Text(
                                    'Project :',
                                    style: TextStyle(
                                      color: Colors.black54,
                                      fontSize: 18.0,
                                    ),
                                  ),
                                ),
                                Container(
                                  child: Text(
                                    'Artis, Selebgram',
                                    style: TextStyle(
                                      fontSize: 18.0,
                                      color: Colors.black54,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            Container(
                              child: Text(
                                'Artis ex JKT48',
                                style: TextStyle(
                                  color: Colors.black54,
                                  fontSize: 18.0,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Container(
                      width: 120.0,
                      height: 150.0,
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(24.0),
                        child: Image(
                          image: AssetImage(nabilaayu),
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
