import 'package:bloc/bloc.dart';
import 'package:roomies_frontend/presentaion/bloc/broker/house_event.dart';
import 'package:roomies_frontend/presentaion/bloc/broker/house_state.dart';

class HouseBloc extends Bloc<HouseEvent, HouseState>{
  HouseBloc():super(LoadingState()){


  }
}