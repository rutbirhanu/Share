
import 'package:roomies_frontend/data/model/image_model.dart';

class HouseModel{
  final String id;
  final String location;
  final String numberOfRoom;
  final String price;
  final String description;
  final List<ImageModel> images;

  const HouseModel({required this.id, required this.description, required this.images,required this.price, required this.location, required this.numberOfRoom});

  Map<String,dynamic> toJson(){
    return {
      "id":id,
      "location":location,
      "numberOfRoom":numberOfRoom,
      "price":price,
      "description":description
    };
  }

  factory HouseModel.fromJson(Map<String, dynamic> json){
    return HouseModel(
      id:json["id"],
      location: json["location"],
      numberOfRoom: json["numberOfRoom"],
      price:json["price"],
      images: json["images"],
      description: json["description"]
    );
  }

  HouseModel toEntity(houseModel){
    return HouseModel(id: id, description: description, images: images, price: price, location: location, numberOfRoom: numberOfRoom);
  }

}