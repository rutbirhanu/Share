
class ImageModel{
  final String id;
  final String photo;

  const ImageModel({required this.id, required this.photo});

  Map<String, dynamic> toJson(){
    return{
      "id":id,
      "photo":photo
    };
  }

  factory ImageModel.fromJson(Map<String,dynamic> json){
    return ImageModel(id: json["id"], photo: json["photo"]);
  }
}