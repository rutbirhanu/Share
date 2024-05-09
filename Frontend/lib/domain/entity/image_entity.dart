
import 'package:equatable/equatable.dart';

class ImageEntity extends Equatable{
  final int imageId;
  final String imageUrl;

  const ImageEntity({required this.imageId, required this.imageUrl});

  @override
  // TODO: implement props
  List<Object?> get props => [imageId, imageUrl];
}