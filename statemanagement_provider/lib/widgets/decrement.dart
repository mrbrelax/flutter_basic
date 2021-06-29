import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:statemanagement_provider/blocs/counter_bloc.dart';

class DecrementButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final CounterBloc counterBloc = Provider.of<CounterBloc>(context);
    return TextButton.icon(
      onPressed: () => counterBloc.decrement(),
      icon: Icon(Icons.remove),
      label: Text("Remove"),
    );
  }
}
