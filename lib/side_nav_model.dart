import 'package:flutter/material.dart';

class SideNavModel {

  String? title;
  IconData? iconData;
  String? subTitle;

  SideNavModel({
    this.title,
    this.iconData,
    this.subTitle,
  });


}

final List<SideNavModel> sideNavList = [
  SideNavModel(title:"Home", iconData:Icons.home,subTitle: "Ghar"),
  SideNavModel(title:"Contact", iconData:Icons.phone,subTitle: ""),
  SideNavModel(title:"Setting", iconData:Icons.settings,subTitle: ""),
  SideNavModel(title:"Location", iconData:Icons.map,subTitle: ""),

];