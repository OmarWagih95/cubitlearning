
import 'package:cubitlaerning/counter_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [TextButton(onPressed:()=>BlocProvider.of<CounterCubit>(context).incrementCounter(), child: Icon(Icons.add)),Container(
            decoration: BoxDecoration(
              color: Colors.black12
            ),
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: BlocBuilder<CounterCubit, CounterInitial>(
  builder: (context, state) {
    return Text(state.counterValue.toString());
  },
),
            ),
          ),TextButton(onPressed:()=>BlocProvider.of<CounterCubit>(context).decrementCounter(), child: Icon(Icons.remove),
          )],
        ),
      ),
    );
  }
}
