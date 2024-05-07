
import 'package:equatable/equatable.dart';

class ImageEntity extends Equatable{
  final String id;
  final String photo;

  const ImageEntity({required this.id, required this.photo});

  @override
  // TODO: implement props
  List<Object?> get props => [id, photo];
}