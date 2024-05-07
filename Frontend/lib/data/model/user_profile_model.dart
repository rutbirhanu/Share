
class UserProfileModel{
  final String id;
  final String photo;
  final String identificationPhoto;
  final String budget;
  final String sex;
  final String bio;
  final String preference;
  final String location;

  const UserProfileModel({required this.id, required this.photo, required this.identificationPhoto, required this.budget,
    required this.sex,required this.bio, required this.location, required this.preference});

  Map<String, dynamic> toJson(){
    return {
      "id":id,
      "photo":photo,
      "identificationPhoto":identificationPhoto,
      "budget":budget,
      "sex":sex,
      "bio":bio,
      "preference":preference,
      "location":location
    };
  }

  factory UserProfileModel.fromJson(Map<String, dynamic> json){
    return UserProfileModel(
        id:json["id"],photo: json["photo"], identificationPhoto: json["identificationPhoto"],
        budget:json["budget"], sex: json["sex"], bio: json["bio"], location: json["location"],
        preference: json["preference"]);
  }

}