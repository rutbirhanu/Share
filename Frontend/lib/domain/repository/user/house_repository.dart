import 'package:roomies_frontend/domain/entity/house_entity.dart';

import '../../../data/model/house_model.dart';

abstract class HouseRepository {
  Future<List<HouseEntity>> getHouseList();
  Future<HouseModel> searchHouse(String id);
  Future<List<HouseModel>> savedHouses();
  Future<List<HouseModel>> filterHouse();
}
