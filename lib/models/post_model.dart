class PostModel{
  String? name;
  String? uId;
  String? image;
  String? dateTime;
  String? text;
  String? postImage;


  PostModel(
      {
        this.uId,
        this.name,
        this.dateTime,
        this.image,
        this.text,
        this.postImage,
      }
      );

  PostModel.fromJson(Map<String,dynamic>?json){
    name=json?["name"];
    uId=json?["uId"];
    image=json?["image"];
    dateTime=json?["dateTime"];
    text=json?["text"];
    postImage=json?["postImage"];
  }

  Map<String,dynamic> toMap(){
    return {
      "name":name,
      "uId":uId,
      "dateTime":dateTime,
      "image":image,
      "text":text,
      "postImage":postImage,
    };
  }
}