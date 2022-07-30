import 'package:admin/controllers/controller%20constants.dart';
import 'package:admin/models/cours_data.dart';
import 'package:admin/models/demo_users.dart';
import 'package:admin/screens/courses_dashboard/course_record_card.dart';
import 'package:flutter/material.dart';

import '../../../constants.dart';

class course_records extends StatefulWidget {
  const course_records({
    Key? key,
  }) : super(key: key);

  @override
  State<course_records> createState() => _course_recordsState();
}

class _course_recordsState extends State<course_records> {
  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder(
      valueListenable: INDEX.course_rec,
      builder: (context, value, child) => Container(
        padding: EdgeInsets.all(defaultPadding),
        decoration: BoxDecoration(
          color: secondaryColor,
          borderRadius: const BorderRadius.all(Radius.circular(10)),
        ),
        child: Column(
          children: [
            InkWell(
              onTap: () => print(
                course_data[INDEX.course_rec.value]
                    .record[0]['resources']
                    .length,
              ),
              child: Text(
                "Course records",
                style: Theme.of(context).textTheme.headline6,
              ),
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children:
                  // Chart(),
                  List.generate(
                course_data[INDEX.course_rec.value].record.length,
                (index) => course_rec_card(course_data[INDEX.course_rec.value],
                    index, context, value.hashCode),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
