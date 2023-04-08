import 'package:counterapp/provider/counter_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class CounterPage extends StatelessWidget {
  const CounterPage({super.key});

  @override
  Widget build(BuildContext context) {
    final counter = Provider.of<CounterProvider>(context);
    final count = counter.count;

    return Scaffold(
      appBar: AppBar(
        title: const Text('counter Example'),
        actions: [
          FloatingActionButton(
            onPressed: () {
              counter.decrement();
            },
            child: const Icon(Icons.minor_crash_outlined),
          )
        ],
      ),
      body: Center(
        child: Text(
          'you pressed \n $count times ',
          textAlign: TextAlign.center,
          style: Theme.of(context).textTheme.headlineMedium,
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          counter.increment();
        },
        child: const Icon(Icons.plus_one),
      ),
    );
  }
}
