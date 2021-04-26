import 'package:cached_network_image/cached_network_image.dart';
import 'package:cuu_tro_flutter/getx/account/account.dart';
import 'package:flutter/material.dart';
import 'package:line_icons/line_icons.dart';
import '../common/custom_colors.dart' as CustomColors;

class CustomListTile extends StatelessWidget {
  CustomListTile(
      {Key key,
      @required this.errorTitle,
      this.tailIcon,
      this.tailIconPress,
      this.title,
      this.content,
      this.avatarUrl})
      : super(key: key);

  final String errorTitle;
  Icon tailIcon;
  Function tailIconPress;
  String title;
  String content;
  String avatarUrl;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 10.0),
      padding: EdgeInsets.only(left: 20.0, right: 20.0, top: 10.0),
      height: 100,
      decoration: BoxDecoration(
        color: Colors.white,
        border: Border(
          bottom: BorderSide(color: Colors.grey),
          left: BorderSide(color: Colors.grey),
        ),
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          // Image.asset("assets/images/splash_screen.png"):
          Container(
            width: 70,
            decoration: BoxDecoration(),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(50),
              child: CachedNetworkImage(
                fit: BoxFit.cover,
                imageUrl: this.avatarUrl,
                placeholder: (context, url) => Container(
                    decoration: BoxDecoration(
                        color: CustomColors.kPrimaryColor,
                        shape: BoxShape.circle),
                    child: Image.asset("assets/images/splash_screen.png")),
                placeholderFadeInDuration: Duration(seconds: 1),
              ),
            ),
          ),

          Container(
            padding: EdgeInsets.only(top: 10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                this.title != null
                    ? Text(
                        this.title,
                        style: TextStyle(color: Colors.grey, fontSize: 15),
                      )
                    : SizedBox.shrink(),
                Expanded(
                    child: Text(this.content == null ? errorTitle : content,
                        maxLines: 2,
                        overflow: TextOverflow.ellipsis,
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 15,
                            fontWeight: FontWeight.bold))),
              ],
            ),
          ),
          SizedBox(
            width: 20,
          ),
          tailIcon != null
              ? InkWell(
                  onTap: this.tailIconPress,
                  child: Padding(
                    padding: const EdgeInsets.only(top: 20.0),
                    child: Icon(
                      LineIcons.alternateSignOut,
                      size: 25,
                    ),
                  ),
                )
              : SizedBox.shrink()
        ],
      ),
    );
  }
}
