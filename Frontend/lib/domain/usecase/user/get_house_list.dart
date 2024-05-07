import 'package:roomies_frontend/data/model/house_model.dart';
import 'package:roomies_frontend/domain/repository/user/house_repository.dart';

class GetHouseList {
  final HouseRepository houseRepository;
  const GetHouseList(this.houseRepository);

  Future<List<HouseModel>> call() async{
    return await houseRepository.getHouseList();
  }
}