import 'package:flutter/material.dart';
import 'side_nav_model.dart';

class SideDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        children: [
          DrawerHeader(
              child: Image(
            image: Image.asset(
              "assets/images/2.jpg",
            ).image,
          )),
          ...sideNavList.map((e) => ListTile(
            leading: Icon(e.iconData),
            title: Text(e.title!),
            subtitle: Text(e.subTitle!),

          )

          )
        ],
      ),
    );
  }
}
