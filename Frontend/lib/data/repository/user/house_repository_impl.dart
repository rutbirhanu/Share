import 'package:roomies_frontend/data/datasource/user/house_remote_datasource.dart';
import 'package:roomies_frontend/data/model/house_model.dart';
import 'package:roomies_frontend/domain/entity/house_entity.dart';
import 'package:roomies_frontend/domain/repository/user/house_repository.dart';

class HouseRepositoryImpl implements HouseRepository{
  HouseRemoteDatasource houseRemoteDatasource;

  HouseRepositoryImpl({required this.houseRemoteDatasource});

  @override
  Future<List<HouseModel>> filterHouse() {
    throw UnimplementedError();
  }

  @override
  Future<List<HouseEntity>> getHouseList() async{
    List<HouseModel> houseList=await houseRemoteDatasource.getHouseList();
    List<HouseEntity> houseEntityList= houseList.map((house) =>house.toEntity()).toList();
    return houseEntityList;
  }

  @override
  Future<List<HouseModel>> savedHouses() {
    // TODO: implement savedHouses
    throw UnimplementedError();
  }

  @override
  Future<HouseModel> searchHouse(String id) {
    // TODO: implement searchHouse
    throw UnimplementedError();
  }

}