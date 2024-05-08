import 'package:bloc/bloc.dart';

import '../../user/house/house_event.dart';
import '../../user/house/house_state.dart';

class HouseBloc extends Bloc<HouseEvent, HouseState>{
  HouseBloc():super(LoadingState()){


  }
}