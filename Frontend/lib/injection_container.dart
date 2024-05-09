import 'package:get_it/get_it.dart';
import 'package:roomies_frontend/data/datasource/user/house_remote_datasource.dart';
import 'package:roomies_frontend/data/repository/user/house_repository_impl.dart';
import 'package:roomies_frontend/domain/repository/user/house_repository.dart';
import 'package:roomies_frontend/domain/usecase/user/get_house_list.dart';
import 'package:roomies_frontend/presentation/bloc/user/house/house_bloc.dart';
import "package:http/http.dart" as http;

final getit= GetIt.instance;

void init() {
//bloc
getit.registerFactory(() => HouseBloc(getit()));

//usecase
getit.registerLazySingleton(() => GetHouseList(getit()));

//repository
getit.registerLazySingleton<HouseRepository>(() => HouseRepositoryImpl(houseRemoteDatasource: getit()));

//datasource
getit.registerLazySingleton<HouseRemoteDatasource>(() => HouseRemoteDatasourceImpl(client: getit()));

//http service
getit.registerLazySingleton(() => http.Client());
}