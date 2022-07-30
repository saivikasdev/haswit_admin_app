import 'package:admin/constants.dart';
import 'package:admin/responsive.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class post_noti extends StatefulWidget {
  const post_noti({Key? key}) : super(key: key);

  @override
  State<post_noti> createState() => _post_notiState();
}

class _post_notiState extends State<post_noti> {
  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Expanded(
          flex: 3,
          child: Column(
            children: [
              // MyFiles(),
              SizedBox(height: defaultPadding),
              Column(
                children: [
                  textfield(context),
                  SizedBox(
                    height: 15,
                  ),
                  textfield(context),
                  SizedBox(
                    height: 15,
                  ),
                  post(context)
                ],
              ),
              if (Responsive.isMobile(context))
                SizedBox(height: defaultPadding),
              if (Responsive.isMobile(context)) //courses(),
                SizedBox(
                  height: 200,
                ),
            ],
          ),
        ),
        if (!Responsive.isMobile(context)) SizedBox(width: defaultPadding),
        // On Mobile means if the screen is less than 850 we dont want to show it
        if (!Responsive.isMobile(context))
          Expanded(
            flex: 3,
            child: Container(
              child: Column(
                children: [
                  textfield2(context),
                  SizedBox(
                    height: 15,
                  ),
                  post1(context),
                ],
              ),
              padding: EdgeInsets.all(defaultPadding),
              decoration: BoxDecoration(
                color: secondaryColor,
                borderRadius: const BorderRadius.all(Radius.circular(10)),
              ),
            ),
          ),
      ],
    );
  }
}

TextField textfield(BuildContext context) {
  return TextField(
    decoration: InputDecoration(
      hintText: "Notification Title",
      hintStyle: TextStyle(color: Colors.white24),
      fillColor: secondaryColor,
      filled: true,
      border: OutlineInputBorder(
        borderSide: BorderSide.none,
        borderRadius: const BorderRadius.all(Radius.circular(10)),
      ),
    ),
  );
}

TextField textfield2(BuildContext context) {
  return TextField(
    decoration: InputDecoration(
      hintText: "Update note",
      hintStyle: TextStyle(color: Colors.white24),
      fillColor: secondaryColor,
      filled: true,
      border: OutlineInputBorder(
        borderSide: BorderSide.none,
        borderRadius: const BorderRadius.all(Radius.circular(10)),
      ),
    ),
  );
}

TextField textfield1(BuildContext context) {
  return TextField(
    decoration: InputDecoration(
      hintText: "Notification Link",
      hintStyle: TextStyle(color: Colors.white24),
      fillColor: secondaryColor,
      filled: true,
      border: OutlineInputBorder(
        borderSide: BorderSide.none,
        borderRadius: const BorderRadius.all(Radius.circular(10)),
      ),
    ),
  );
}

InkWell post(BuildContext context) {
  return InkWell(
    onTap: () {},
    child: Container(
      padding: EdgeInsets.only(
        left: (defaultPadding * 5),
        right: (defaultPadding * 5),
        top: (7),
        bottom: (7),
      ),
      margin: EdgeInsets.symmetric(horizontal: defaultPadding / 2),
      decoration: BoxDecoration(
        color: primaryColor,
        borderRadius: const BorderRadius.all(Radius.circular(10)),
      ),
      child: Text(
        "Post Notification",
        style: Theme.of(context).textTheme.headline6,
      ),
    ),
  );
}

InkWell post1(BuildContext context) {
  return InkWell(
    onTap: () {},
    child: Container(
      padding: EdgeInsets.only(
        left: (defaultPadding * 5),
        right: (defaultPadding * 5),
        top: (7),
        bottom: (7),
      ),
      margin: EdgeInsets.symmetric(horizontal: defaultPadding / 2),
      decoration: BoxDecoration(
        color: primaryColor,
        borderRadius: const BorderRadius.all(Radius.circular(10)),
      ),
      child: Text(
        "Post Note",
        style: Theme.of(context).textTheme.headline6,
      ),
    ),
  );
}
