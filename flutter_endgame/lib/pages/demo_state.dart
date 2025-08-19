import 'package:flutter/material.dart';
import 'package:flutter_endgame/bloc/counter_bloc.dart';
import 'package:flutter_endgame/bloc/counter_event.dart';
import 'package:flutter_endgame/provider/counter_model.dart';
import 'package:provider/provider.dart';

class DemoState extends StatefulWidget {
  const DemoState({super.key});

  @override
  State<DemoState> createState() => _DemoStateState();
}

class _DemoStateState extends State<DemoState> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          "${context.watch<CounterBloc>().state.number}",
          style: TextStyle(fontSize: 50),
        ),
        ElevatedButton(
          onPressed: () {
            // Provider.of<CounterModel>(context, listen: false).tangSo();
            context.read<CounterBloc>().add(TangSo());
          },
          child: Text("Tăng số"),
        ),
        ElevatedButton(
          onPressed: () {
            // Provider.of<CounterModel>(context, listen: false).tangSo();
            context.read<CounterBloc>().add(GiamSo());
          },
          child: Text("Giảm số"),
        ),
      ],
    );
  }
}
