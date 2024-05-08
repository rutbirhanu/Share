
import 'package:equatable/equatable.dart';

class ImageEntity extends Equatable{
  final String id;
  final String imageUrl;

  const ImageEntity({required this.id, required this.imageUrl});

  @override
  // TODO: implement props
  List<Object?> get props => [id, imageUrl];
}