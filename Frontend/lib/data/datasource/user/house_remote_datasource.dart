import 'package:roomies_frontend/core/error/server_exception.dart';
import 'package:roomies_frontend/data/model/house_model.dart';
import "package:http/http.dart" as http;
import 'dart:convert';
import 'dart:developer';

abstract class HouseRemoteDatasource{
  Future<List<HouseModel>> getHouseList();
}


class HouseRemoteDatasourceImpl extends HouseRemoteDatasource{
  var client= http.Client();
  static const BASEURL ="http://localhost:1000/api/";
  HouseRemoteDatasourceImpl({required this.client});

  @override
  Future<List<HouseModel>> getHouseList() async{
    try{
      late List<HouseModel> houseModelList;
      var response= await client.get(Uri.parse('${BASEURL}houses/getallhouse'));
      if (response.statusCode==200){
        List houseList= jsonDecode(response.body);
        houseModelList =houseList.map(
                (house) => HouseModel.fromJson(house)
        ).toList();
        return houseModelList;
      }  else{
         throw ServerException(errorMessage: "server error");
      }
    }
    catch(e){
      log(e.toString());
      return [];
    }finally{
        client.close();
  }}
  }
