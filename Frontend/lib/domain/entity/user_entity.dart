
import 'package:equatable/equatable.dart';

class UserEntity extends Equatable{
  final String id;
  final String userName;
  final String fullName;
  final String password;

  const UserEntity(
      {required this.id, required this.userName, required this.fullName, required this.password});

  @override
  // TODO: implement props
  List<Object?> get props => [id, userName, fullName, password];
}