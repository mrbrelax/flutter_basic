import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:statemanagement_provider/blocs/counter_bloc.dart';

class IncrementButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final CounterBloc counterBloc = Provider.of<CounterBloc>(context);
    return TextButton.icon(
      onPressed: () => counterBloc.increment(),
      icon: Icon(Icons.add),
      label: Text("Add"),
    );
  }
}
