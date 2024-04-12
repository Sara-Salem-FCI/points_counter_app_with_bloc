import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:points_counter_app_with_bloc/app_styles.dart';
import 'package:points_counter_app_with_bloc/widgets/custom_button.dart';

import '../cubit/counter_cubit.dart';
import '../cubit/counter_states.dart';
class PointsCounterScreen extends StatelessWidget {
  const PointsCounterScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (BuildContext context) => CounterCubit(),
      child: Scaffold(
        appBar: AppBar(
          title: const Text('Points Counter'),
        ),
        body: BlocBuilder<CounterCubit, CounterStates>(
          builder: (context, state) {
            return Padding(
              padding: const EdgeInsets.all(20.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Column(
                          children: [
                            const Text(
                              'Team A',
                              style: AppStyles.bold30,
                            ),
                             Text(
                              BlocProvider.of<CounterCubit>(context).counterA.toString(),
                              style: AppStyles.bold70,
                            ),
                            CustomButton(onPressed: (){
                              BlocProvider.of<CounterCubit>(context).increaseTeamACounter(buttonNumber: 1);
                            }, text: 'Add 1 Point',),
                            CustomButton(onPressed: (){
                              BlocProvider.of<CounterCubit>(context).increaseTeamACounter(buttonNumber: 2);
                            }, text: 'Add 2 Point',),
                            CustomButton(onPressed: (){
                              BlocProvider.of<CounterCubit>(context).increaseTeamACounter(buttonNumber: 3);
                            }, text: 'Add 3 Point',),
                          ]
                      ),
                      const Spacer(),
                      const SizedBox(
                        height: 300,
                        child: VerticalDivider(
                          color: Colors.grey,
                          width: 1,
                        ),
                      ),
                      const Spacer(),
                      Column(
                          children: [
                            const Text(
                              'Team B',
                              style: AppStyles.bold30,
                            ),
                            Text(
                              BlocProvider.of<CounterCubit>(context).counterB.toString(),
                              style: AppStyles.bold70,
                            ),
                            CustomButton(onPressed: (){
                              BlocProvider.of<CounterCubit>(context).increaseTeamBCounter(buttonNumber: 1);
                            }, text: 'Add 1 Point',),
                            CustomButton(onPressed: (){
                              BlocProvider.of<CounterCubit>(context).increaseTeamBCounter(buttonNumber: 2);
                            }, text: 'Add 2 Point',),
                            CustomButton(onPressed: (){
                              BlocProvider.of<CounterCubit>(context).increaseTeamBCounter(buttonNumber: 3);
                            }, text: 'Add 3 Point',),
                          ]
                      ),
                    ],
                  ),
                  CustomButton(onPressed: (){
                    BlocProvider.of<CounterCubit>(context).resetCounter();
                  }, text: 'Reset',),
                ],
              ),
            );
          },
        ),
      ),
    );
  }
}
