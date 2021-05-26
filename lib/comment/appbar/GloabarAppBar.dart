import 'package:flutter/material.dart';
import 'package:flutter_application_1/generated/l10n.dart';

_popupMenuItem(String title, IconData icon, Color themeColor) {
  print(themeColor);
  return PopupMenuItem(
      child: Row(
    children: <Widget>[
      Padding(
        child: Icon(
          icon,
          size: 14,
          color: themeColor,
        ),
        padding: EdgeInsets.only(right: 5),
      ),
      Padding(
        child:
            Text(title, style: TextStyle(color: Colors.black38, fontSize: 14)),
        padding: EdgeInsets.only(left: 5, bottom: 5),
      ),
    ],
  ));
}

// ignore: non_constant_identifier_names
AppBar GloabarAppBar(
    BuildContext context, String st, bool isShow, Color themeColor) {
  return AppBar(
    title: Text(
      S.of(context).title,
      style: TextStyle(fontSize: 16),
    ),
    centerTitle: true,
    automaticallyImplyLeading: true,
    leading: isShow
        ? IconButton(
            iconSize: 16, icon: Icon(Icons.arrow_back_ios), onPressed: () {})
        : null,
    actions: [
      IconButton(
          iconSize: 16,
          icon: Icon(Icons.more_vert),
          onPressed: () {
            showMenu(
              context: context,
              position: RelativeRect.fromLTRB(500, 60, 5, 0),
              items: <PopupMenuEntry>[
                _popupMenuItem('发起群聊', Icons.chat_bubble_outline, themeColor),
                _popupMenuItem('添加朋友', Icons.person_add, themeColor),
                _popupMenuItem('扫一扫', Icons.crop_free, themeColor),
                _popupMenuItem('收付款', Icons.offline_pin, themeColor),
                _popupMenuItem('设置主题', Icons.style_sharp, themeColor),
              ],
            );
          })
    ],
  );
}
