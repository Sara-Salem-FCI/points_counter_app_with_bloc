import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:points_counter_app_with_bloc/cubit/counter_states.dart';

class CounterCubit extends Cubit<CounterStates>{
  CounterCubit() : super(IncreaseTeamACounter());
  int counterA =0;
  int counterB =0;
  increaseTeamACounter({required int buttonNumber}){
    counterA+=buttonNumber;
    emit(IncreaseTeamACounter());
  }
  increaseTeamBCounter({required int buttonNumber}){
    counterB+=buttonNumber;
    emit(IncreaseTeamBCounter());
  }
  resetCounter(){
    counterA=0;
    counterB=0;
    emit(ResetCounter());
  }
}