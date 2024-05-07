
class UserModel{
  final String id;
  final String userName;
  final String fullName;
  final String phoneNumber;
  final String password;

  const UserModel({required this.id, required this.userName, required this.fullName, required this.phoneNumber, required this.password});

  Map<String, dynamic> toJson(){
    return {
      "id":id,
      "userName":userName,
      "fullName":fullName,
      "phoneNumber":phoneNumber,
      "password":password
    };
  }

  factory UserModel.fromJson(Map<String, dynamic> json){
    return UserModel(
      id:json["id"],
      userName: json["userName"],
      fullName: json["fullName"],
      phoneNumber: json["phoneNumber"],
      password: json["password"]
    );
  }
}