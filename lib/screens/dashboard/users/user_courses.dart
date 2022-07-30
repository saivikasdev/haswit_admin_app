import 'package:admin/controllers/controller%20constants.dart';
import 'package:admin/models/demo_users.dart';
import 'package:flutter/material.dart';

import '../../../constants.dart';
import 'chart.dart';
import 'user_course_card.dart';

class courses extends StatelessWidget {
  const courses({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder(
      valueListenable: INDEX.user_course_index,
      builder: (context, value, child) => Container(
        padding: EdgeInsets.all(defaultPadding),
        decoration: BoxDecoration(
          color: secondaryColor,
          borderRadius: const BorderRadius.all(Radius.circular(10)),
        ),
        child: Column(
          children: [
            Text(
              "User's courses",
              style: Theme.of(context).textTheme.headline6,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children:
                  // Chart(),
                  List.generate(
                users_[value.hashCode].courses.length,
                (index) => course_card(users_[value.hashCode], index, context),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
