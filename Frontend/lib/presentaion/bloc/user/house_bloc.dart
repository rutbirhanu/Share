import 'dart:async';
import 'dart:developer';
import 'package:bloc/bloc.dart';
import 'package:roomies_frontend/data/datasource/user/house_remote_datasource.dart';
import 'package:roomies_frontend/data/model/house_model.dart';
import 'package:roomies_frontend/presentaion/bloc/user/house_event.dart';
import 'package:roomies_frontend/presentaion/bloc/user/house_state.dart';
import "package:http/http.dart" as http;

class HouseBloc extends Bloc<HouseEvent, HouseState> {
  HouseBloc() : super(InitialState()) {
    on<InitialEvent>(initialEvent);
    on<HouseDetailEvent>(houseDetailEvent);
    on<AddToFavoriteHouseEvent>(addToFavoriteHouseEvent);
    on<RemoveFromFavoriteHouseEvent>(removeFromFavoriteHouseEvent);
  }

  FutureOr<void> initialEvent(InitialEvent event,
      Emitter<HouseState> emit) async{
    emit(LoadingState());
    late List<HouseModel> houseList;
    var client = http.Client();
    try{
      HouseRemoteDatasourceImpl houseRemoteDatasource = HouseRemoteDatasourceImpl(client);
      houseList = await houseRemoteDatasource.getHouseList();
    }
    catch(e){
      emit(HouseErrorState());
      log(e.toString());
    }

    emit(HouseSuccessState(houseList: houseList));
  }

  FutureOr<void> houseDetailEvent(HouseDetailEvent event,
      Emitter<HouseState> emit) {
  }

  FutureOr<void> addToFavoriteHouseEvent(AddToFavoriteHouseEvent event,
      Emitter<HouseState> emit) {
  }

  FutureOr<void> removeFromFavoriteHouseEvent(RemoveFromFavoriteHouseEvent event,
      Emitter<HouseState> emit) {
  }

}