import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:timer_count_down/timer_controller.dart';
import 'package:timer_count_down/timer_count_down.dart';

final isRestart = StateProvider((ref) => false);
final isPause = StateProvider((ref) => false);

void main() {
  runApp(ProviderScope(child: MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: CountDownTimer(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class CountDownTimer extends ConsumerWidget {
  final _controller = CountdownController();
  final _scaffoldKey = GlobalKey<ScaffoldState>();
  @override
  Widget build(BuildContext context, ScopedReader watch) {
    final restart = watch(isRestart).state;
    final pause = watch(isPause).state;
    final iconData =
        restart ? Icons.refresh : (pause ? Icons.pause : Icons.play_arrow);
    return Scaffold(
      key: _scaffoldKey,
      appBar: AppBar(
        title: Text('Timer CountDown'),
        centerTitle: true,
      ),
      body: Center(
        child: Countdown(
          controller: _controller,
          seconds: 32,
          build: (_, double timer) => Text(
            '${timer ~/ 360}:${timer ~/ 60}:${timer.toString()}',
            style: TextStyle(fontSize: 80),
          ),
          interval: Duration(seconds: 1),
          onFinished: () {
            context.read(isRestart).state = !context.read(isRestart).state;
            ScaffoldMessenger.of(context).showSnackBar(
              SnackBar(
                content: Text('Timer has been stop!.'),
              ),
            );
          },
        ),
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(iconData),
        onPressed: () {
          final isComplete = _controller.isCompleted;
          isComplete! ? _controller.restart() : _controller.pause();
          if (!isComplete && !pause) _controller.resume();
          if(isComplete)
            context.read(isRestart).state = false;
          else
            context.read(isPause).state = !context.read(isPause).state;
        },
      ),
    );
  }
}
