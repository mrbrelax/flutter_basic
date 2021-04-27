import 'package:flutter/material.dart';
import 'package:linearprogressindicator/uploaded.dart';

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage>
    with SingleTickerProviderStateMixin {
  String title = "LinearProgressIndicator";
  double _progressValue = 0.0;
  bool _isUploaded = false;
  bool _inProgress = false;
  late AnimationController _progressAnimationController;
  late Animation<double> _progressAnimation;

  void _btnProssed() {
    setState(() {
      if (_isUploaded) {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => Uploaded(),
          ),
        );
      } else {
        _progressAnimationController.forward();
        _inProgress = true;
      }
    });
    _progressAnimation = Tween<double>(begin: 0.0, end: 1.0).animate(
      CurvedAnimation(
        parent: _progressAnimationController,
        curve: Curves.easeIn,
      ),
    )..addListener(() {
        _progressValue = _progressAnimation.value;
        if (_progressAnimation.isCompleted) {
          _inProgress = false;
          _isUploaded = true;
        }
        setState(() {});
      });
  }

  @override
  void dispose() {
    super.dispose();
    _progressAnimationController.dispose();
  }

  @override
  void initState() {
    super.initState();
    _progressAnimationController = AnimationController(
      vsync: this,
      duration: Duration(seconds: 4),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
        centerTitle: true,
      ),
      body: Center(
        child: Container(
          width: 175.0,
          height: 325.0,
          decoration: BoxDecoration(
            color: Colors.blue,
            borderRadius: BorderRadius.circular(16.0),
            boxShadow: [
              BoxShadow(
                color: Color(0xFF1B1F32).withOpacity(0.16),
                offset: Offset(0.0, 3.0),
                blurRadius: 8.0,
              ),
            ],
          ),
          child: Column(
            children: [
              LinearProgressIndicator(
                value: _progressValue,
                backgroundColor: Colors.white,
                valueColor: AlwaysStoppedAnimation<Color>(
                  Color.lerp(
                      Color(0xFF1B1F32), Color(0xFFC41A3B), _progressValue)!,
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(24.0),
                child: Text(
                  (_progressValue * 100).toStringAsFixed(0) + '%',
                  style: TextStyle(
                    fontSize: 24.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              Container(
                height: 48.0,
                width: 100.0,
                child: MaterialButton(
                  onPressed: _inProgress ? null : _btnProssed,
                  color: Color(0xFFC41A3B),
                  disabledColor: Colors.grey,
                  child: Text(
                    _isUploaded ? 'Done'.toUpperCase() : 'Upload'.toUpperCase(),
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 16.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
