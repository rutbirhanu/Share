
import 'package:equatable/equatable.dart';

class HouseEntity extends Equatable{
  final String id;
  final String location;
  final String numberOfRoom;
  final String price;
  final String description;

  const HouseEntity(
      {required this.id, required this.description, required this.price, required this.location, required this.numberOfRoom});

  @override
  List<Object?> get props => [id, location, numberOfRoom, price, description];
}