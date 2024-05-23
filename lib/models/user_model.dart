class UserModel{
  String? name;
  String? phone;
  String? email;
  String? uId;
  String? image;
  bool? isEmailVerified;
  bool? isAdmin;
  bool? vip;

  UserModel(
  {
    this.uId,
    this.phone,
    this.name,
    this.email,
    this.image,
    this.isEmailVerified,
    this.isAdmin,
    this.vip,
}
      );

  UserModel.fromJson(Map<String,dynamic>?json){
    name=json?["name"];
    uId=json?["uId"];
    phone=json?["phone"];
    email=json?["email"];
    image=json?["image"];
    isAdmin=json?["isAdmin"];
    vip=json?["vip"];
    isEmailVerified=json?["isEmailVerified"];
  }

  Map<String,dynamic> toMap(){
    return {
      "name":name,
      "phone":phone,
      "uId":uId,
      "email":email,
      "image":image,
      "isEmailVerified":isEmailVerified,
      "isAdmin":isAdmin,
      "vip":vip,
    };
  }
}