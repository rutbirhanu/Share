
import 'package:roomies_frontend/domain/entity/image_entity.dart';

class ImageModel{
  final int imageId;
  final String imageUrl;

  const ImageModel({required this.imageId, required this.imageUrl});

  Map<String, dynamic> toJson(){
    return{
      "imageId":imageId,
      "imageUrl":imageUrl
    };
  }

  factory ImageModel.fromJson(Map<String,dynamic> json){
    return ImageModel(imageId: json["imageId"], imageUrl: json["imageUrl"]);
  }


  ImageEntity toEntity(){
    return ImageEntity(imageId:imageId , imageUrl: imageUrl);
  }
}
