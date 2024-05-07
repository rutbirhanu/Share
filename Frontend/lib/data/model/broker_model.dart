
class BrokerModel {
  final String id;
  final String fullName;
  final String userName;
  final String password;
  final String phoneNumber1;
  final String phoneNumber2;
  final String address;
  final String photo;
  final String identificationPhoto;

  const BrokerModel({required this.id,required this.fullName, required this.userName, required this.address,required this.password,
    required this.phoneNumber1, required this.phoneNumber2, required this.identificationPhoto, required this.photo});


  Map<String, dynamic> toJson(){
    return {
      "id":id,
      "fullName":fullName,
      "userName":userName,
      "password":password,
      "phoneNumber1":phoneNumber1,
      "phoneNumber2":phoneNumber2,
      "address":address,
      "photo":photo,
      "identificationPhoto":identificationPhoto
    };
  }

  factory BrokerModel.fromJson(Map<String,dynamic> json){
    return BrokerModel(
      id:json["id"],
      userName: json["username"],
      fullName:json["fullName"],
      password: json["password"],
      phoneNumber1:json["phoneNumber1"],
      phoneNumber2:json["phoneNumber2"],
      address:json["address"],
      photo:json["photo"],
      identificationPhoto:json["identificationPhoto"]
    );

  }
}