import 'package:roomies_frontend/data/model/house_model.dart';

abstract class HouseEvent{}

class InitialEvent extends HouseEvent{}

class AddHouseEvent extends HouseEvent{
  HouseModel house;
  AddHouseEvent({required this.house});
}