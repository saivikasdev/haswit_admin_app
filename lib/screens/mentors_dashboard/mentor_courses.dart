import 'package:admin/controllers/controller%20constants.dart';
import 'package:admin/models/demo_users.dart';
import 'package:admin/models/mentor_data.dart';
import 'package:admin/screens/mentors_dashboard/mentor_course_card.dart';
import 'package:flutter/material.dart';

import '../../../constants.dart';

class mentor_courses extends StatelessWidget {
  const mentor_courses({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder(
      valueListenable: INDEX.mentor_course_index,
      builder: (context, value, child) => Container(
        padding: EdgeInsets.all(defaultPadding),
        decoration: BoxDecoration(
          color: secondaryColor,
          borderRadius: const BorderRadius.all(Radius.circular(10)),
        ),
        child: Column(
          children: [
            Text(
              "Mentor's courses",
              style: Theme.of(context).textTheme.headline6,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children:
                  // Chart(),
                  List.generate(
                mentordata[value.hashCode].courses.length,
                (index) => mentor_course_card(
                    mentordata[value.hashCode], index, context),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
