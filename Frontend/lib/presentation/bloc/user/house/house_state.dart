
import 'package:roomies_frontend/domain/entity/house_entity.dart';

import '../../../../data/model/house_model.dart';

abstract class HouseState{}
abstract class HouseActionState extends HouseState{}

class InitialState extends HouseState{}

class AddToFavoriteHouseState extends HouseActionState{}

class RemoveFromFavoriteHouseState extends HouseActionState{}

class LoadingState extends HouseState{}

class HouseSuccessState extends HouseState{
  List<HouseEntity> houseList;
  HouseSuccessState({required this.houseList});
}

class HouseErrorState extends HouseState{
  String error;
  HouseErrorState({required this.error});
}