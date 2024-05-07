
import 'package:equatable/equatable.dart';

class UserProfileEntity extends Equatable {
  final String id;
  final String photo;
  final String identificationPhoto;
  final String budget;
  final String sex;
  final String bio;
  final String preference;
  final String location;

  const UserProfileEntity(
      {
        required this.id, required this.photo, required this.identificationPhoto, required this.budget,
        required this.sex, required this.bio, required this.location, required this.preference});

  @override
  // TODO: implement props
  List<Object?> get props => [id, photo, identificationPhoto, budget, sex, bio, preference, location];

}