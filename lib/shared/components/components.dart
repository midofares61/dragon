import 'package:dragon/cubit/cubit_app.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:dragon/modules/excersise_screen.dart';
import 'package:page_transition/page_transition.dart';
import '../../generated/l10n.dart';
import '../../main.dart';
import '../../models/card.dart';
import '../../models/user_model.dart';
import '../../modules/chat_details/chat_details_screen.dart';
import '../../modules/dialog_widget.dart';
import '../local/chach_helper.dart';
import 'constance.dart';

Widget defaultCard(CardModel item,context)=>InkWell(
  onTap: (){
    navigateTo(context: context, widget: ExerciseScreen(name: item.name,image: item.image,list: item.excersises,));
  },
  child: Container(
    alignment: Alignment.center,
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(15)
    ),
    margin: const EdgeInsets.symmetric(vertical: 5, horizontal: 15),
      clipBehavior: Clip.antiAliasWithSaveLayer,
    child: Stack(
      alignment: Alignment.topRight,
      children: [
        Image(
          width: double.infinity,
          height: 160,
          fit: BoxFit.cover,
          image: AssetImage(item.image),
        ),
        Positioned(
          top: 10,
          left: 15,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              item.name=="كارديو محترف"||item.name=="كارديو متوسط"||item.name=="كارديو مبتدئ"?SizedBox():
              Row(
                children: [
                  for(int i=0;i<item.value;i++)
                    const Icon(Icons.flash_on_sharp,color: Color.fromRGBO(54, 146, 236, 1),),
                  for(int i=0;i<3-item.value;i++)
                    const Icon(Icons.flash_on,color: Color.fromRGBO(83, 84, 87,0.8),),
                ],
              ),
              SizedBox(height: 5,),
              Text(
                item.name.toUpperCase(),
                style: const TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 18,
                ),
              ),
              SizedBox(height: 5,),
              isArabic()?
              Row(
                children: [
                  SizedBox(width: 10,),
                  Text(S.of(context).exercises.toUpperCase(),style: TextStyle(fontSize: 15,color: Colors.white)),
                  SizedBox(width: 5,),
                  Text("${item.excersises.length}",style: TextStyle(fontSize: 15,color: Colors.white)),
                  SizedBox(width: 5,),
                  Icon(Icons.circle,size: 6,color: Colors.white),
                  SizedBox(width: 5,),
                  Text(S.of(context).minuteCart.toUpperCase(),style: TextStyle(fontSize: 15,color: Colors.white)),
                  SizedBox(width: 5,),
                  Text("${item.excersises.length * 5 + item.excersises.length}",style: TextStyle(fontSize: 15,color: Colors.white)),
                ],
              ):Row(
                children: [
                  Text("${item.excersises.length * 5 + item.excersises.length}",style: TextStyle(fontSize: 15,color: Colors.white)),
                  SizedBox(width: 5,),
                  Text(S.of(context).minuteCart.toUpperCase(),style: TextStyle(fontSize: 15,color: Colors.white)),
                  SizedBox(width: 5,),
                  Icon(Icons.circle,size: 6,color: Colors.white),
                  SizedBox(width: 5,),
                  Text("${item.excersises.length}",style: TextStyle(fontSize: 15,color: Colors.white)),
                  SizedBox(width: 5,),
                  Text(S.of(context).exercises.toUpperCase(),style: TextStyle(fontSize: 15,color: Colors.white)),
                ],
              ),
            ],
          ),
        ),
      ],
    ),
  ),
);

Widget myDivider()=>Container(
  width: double.infinity,
  height: 2,
  color: Colors.grey[300],
);

Widget chatBuilder(UserModel user, context) => InkWell(
  onTap: () {
    navigateTo(
        context: context,
        widget: ChatDetailsScreen(
          model: user,
        ));
  },
  child: Padding(
    padding: const EdgeInsets.all(20.0),
    child: Row(
      children: [
        CircleAvatar(
          radius: 25,
          backgroundImage: NetworkImage("${user.image}"),
        ),
        SizedBox(
          width: 10,
        ),
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "${user.name}",
                style: Theme.of(context)
                    .textTheme
                    .subtitle1
                    ?.copyWith(height: 1.4),
              ),
            ],
          ),
        ),
      ],
    ),
  ),
);

void navigateTo({required context, required widget}) {
  Navigator.push(context, MaterialPageRoute(builder: (context) => widget));
}

void navigateToFinish({required context, required widget}) {
  Navigator.pushAndRemoveUntil(
      context, MaterialPageRoute(builder: (context) => widget), (route) {
    return false;
  });
}
Widget defaultButton({
  required String text,
  required Color color,
  required Color background,
  double? width,
  required Function() navigate,
}) =>
    Container(
      width: width,
      decoration: BoxDecoration(
          color: background,
          borderRadius: BorderRadius.circular(30),
          ),
      child: TextButton(
        onPressed: navigate,
        child: Text(
          text,
          style: TextStyle(color: color, fontSize: 25),
        ),
      ),
    );

Widget defaultTextForm({
  required TextEditingController controller,
  required TextInputType type,
  required String label,
  required Icon prefix,
  IconData? suffix,
  required String? Function(String?) validate,
  dynamic Function(String?)? changed,
  dynamic Function(String?)? onSubmit,
  Function()? suffixFun,
  bool isPassword = false,
}) =>
    TextFormField(
      style: TextStyle(color: Colors.black,),
      obscureText: isPassword,
      controller: controller,
      keyboardType: type,
      decoration: InputDecoration(
        labelText: label,
        prefixIcon: prefix,
        border: const OutlineInputBorder(),
        suffixIcon: IconButton(
          onPressed: suffixFun,
          icon: Icon(suffix),
        ),
      ),
      validator: validate,
      onChanged: changed,
      onFieldSubmitted: onSubmit,
    );

Widget cardSetting({
  required String text,
  required Color color,
  required Function() onPress,
  required IconData icon,
  required bool isArrow,
  required bool isLanguage,
})=>InkWell(
  onTap: onPress,
  child: Row(
    children: [
      Container(
        decoration: BoxDecoration(
            color: color,
            borderRadius: BorderRadius.circular(8)),
        padding: EdgeInsets.all(8),
        child: Icon(
          icon,
          color: Colors.white,
          size: 20,
        ),
      ),
      SizedBox(
        width: 15,
      ),
      Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(text,
              style: TextStyle(
                  fontSize: 16, fontWeight: FontWeight.w500)),
          if(isLanguage)
          Column(

            children: [
              SizedBox(
                height: 2,
              ),
              Text(isArabic() ? "العربية" : "English",
                  style: TextStyle(
                      fontSize: 12,
                      fontWeight: FontWeight.w400)),
            ],
          )
        ],
      ),
      Spacer(),
      if(isArrow)
      Icon(
        Icons.arrow_forward_ios_outlined,
        color: Colors.grey.shade400,
        size: 18,
      )
    ],
  ),
);


Widget buildCard(
    context,
    index, {
      required String name,
      required String image,
      required String text,
      required String imagePost,
      required String dateTime,
    }) =>
    Card(
      margin: EdgeInsets.all(0),
      clipBehavior: Clip.antiAliasWithSaveLayer,
      color: Colors.white,
      child: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                CircleAvatar(
                  radius: 25,
                  backgroundImage: NetworkImage(image),
                ),
                SizedBox(
                  width: 10,
                ),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          Text(
                            name,
                            style: Theme.of(context)
                                .textTheme
                                .subtitle1
                                ?.copyWith(height: 1.4),
                          ),
                          SizedBox(
                            width: 5,
                          ),
                          Icon(
                            Icons.check_circle,
                            color: defaultColor,
                            size: 16,
                          )
                        ],
                      ),
                      Text(
                        dateTime.replaceFirst(
                            RegExp(r'\d{2}:\d{2}:\d{2}.\d{6}'), ''),
                        style: Theme.of(context)
                            .textTheme
                            .caption
                            ?.copyWith(height: 1.4),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  width: 10,
                ),
                IconButton(
                    onPressed: () {
                    },
                    icon: Icon(
                      Icons.more_horiz,
                      size: 20,
                    ))
              ],
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 15.0),
              child: Container(
                color: Colors.grey[300],
                width: double.infinity,
                height: 1,
              ),
            ),
            Text(
              text,
              style:
              TextStyle(fontSize: 14, height: 1.4, color: Colors.grey[700]),
            ),
            imagePost == ""
                ? SizedBox()
                : Card(
              clipBehavior: Clip.antiAliasWithSaveLayer,
              child: Image(
                height: 170,
                fit: BoxFit.cover,
                width: double.infinity,
                image: NetworkImage(imagePost),
              ),
            ),
          ],
        ),
      ),
    );