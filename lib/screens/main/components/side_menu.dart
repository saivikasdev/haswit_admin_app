import 'package:admin/controllers/controller%20constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class SideMenu extends StatefulWidget {
  const SideMenu({
    Key? key,
  }) : super(key: key);

  @override
  State<SideMenu> createState() => _SideMenuState();
}

List<bool> selected = [true, false, false, false, false];

class _SideMenuState extends State<SideMenu> {
  List<List> icon = [
    ["assets/Icons/menu_profile.svg", "Users"],
    [
      "assets/Icons/teacher-teaching-to-the-class-circular-symbol-svgrepo-com.svg",
      "Mentors"
    ],
    ["assets/Icons/computer-svgrepo-com.svg", "Courses"],
    ["assets/Icons/menu_notification.svg", "post_notification"],
  ];

  void select(int n) {
    for (int i = 0; i < 1; i++) {
      if (i == n) {
        selected[i] = true;
      } else {
        selected[i] = false;
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        children:
            // DrawerHeader(
            //   child: Text(
            //     "haswit admin",
            //     style: Theme.of(context).textTheme.headlineSmall,
            //   ),
            //   padding: EdgeInsets.fromLTRB(56.0, 56.0, 16.0, 8.0),
            // ),
            icon
                .map(
                  (e) => DrawerListTile(context,
                      // selected: selected[icon.indexOf(e)],
                      e: e, onTap: () {
                    print("/////////////");
                    setState(() {
                      select(icon.indexOf(e));
                    });
                    INDEX.index.value = icon.indexOf(e);
                    print(INDEX.index.value);
                    print(e);
                    // print(icon.indexOf(e));
                  }, icon: icon),
                )
                .toList(),
        // DrawerListTile(
        //   title: "Users",
        //   svgSrc: "assets/icons/menu_profile.svg",
        //   press: () {},
        // ),
        // DrawerListTile(
        //   title: "Mentors",
        //   svgSrc:
        //       "assets/icons/teacher-teaching-to-the-class-circular-symbol-svgrepo-com.svg",
        //   press: () {},
        // ),
        // DrawerListTile(
        //   title: "Courses",
        //   svgSrc: "assets/icons/computer-svgrepo-com.svg",
        //   press: () {},
        // ),
        // DrawerListTile(
        //   title: "Paid users",
        //   svgSrc: "assets/icons/money-svgrepo-com.svg",
        //   press: () {},
        // ),
        // DrawerListTile(
        //   title: "Post Notification",
        //   svgSrc: "assets/icons/menu_notification.svg",
        //   press: () {},
        // ),
      ),
    );
  }
}

// class DrawerListTile extends StatelessWidget {
//   const DrawerListTile({
//     Key? key,
//     // For selecting those three line once press "Command+D"
//     required this.e,
//     required this.onTap,
//     required this.selected,
//   }) : super(key: key);

//   final List<dynamic> e;
//   final Function onTap;
//   final bool selected;

//   @override
ListTile DrawerListTile(
  BuildContext context, {
  required List<dynamic> e,
  required Function onTap,
  required List<dynamic> icon,
  // required bool selected,
}) {
  return ListTile(
    onTap: () {
      print("/////////////");

      INDEX.index.value = icon.indexOf(e);
      print(INDEX.index.value);
      print(e);
    },
    horizontalTitleGap: 0.0,
    leading: SvgPicture.asset(
      e[0],
      color: Colors.white54,
      height: 16,
    ),
    title: Text(
      e[1],
      style: TextStyle(color: Colors.white54),
    ),
  );
}
