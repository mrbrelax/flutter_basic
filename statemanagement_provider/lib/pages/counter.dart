import 'package:flutter/material.dart';
import 'package:statemanagement_provider/blocs/counter_bloc.dart';
import 'package:provider/provider.dart';
import 'package:statemanagement_provider/widgets/decrement.dart';
import 'package:statemanagement_provider/widgets/increment.dart';

class CounterPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final CounterBloc counterBloc = Provider.of<CounterBloc>(context);
    return Scaffold(
      body: Container(
        child: Center(
          child: Column(
            children: [
              Text(
                counterBloc.counter.toString(),
                style: TextStyle(fontSize: 62.0),
              ),
              IncrementButton(),
              DecrementButton(),
            ],
          ),
        ),
      ),
    );
  }
}
