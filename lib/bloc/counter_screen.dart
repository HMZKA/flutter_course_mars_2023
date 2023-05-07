import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'bloc/counter_bloc.dart';

class CounterScreen extends StatelessWidget {
  const CounterScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => CounterBloc(),
      child: BlocConsumer<CounterBloc, CounterState>(
        listener: (context, state) {},
        builder: (context, state) {
          return Scaffold(
            appBar: AppBar(),
            body: Center(
              child: Text(
                "${state.counter}",
                style:
                    const TextStyle(fontSize: 22, fontWeight: FontWeight.w500),
              ),
            ),
            floatingActionButton: FloatingActionButton(
              onPressed: () {
                context.read<CounterBloc>().add(IncrementEvent());
              },
              child: Icon(Icons.text_increase),
            ),
          );
        },
      ),
    );
  }
}
