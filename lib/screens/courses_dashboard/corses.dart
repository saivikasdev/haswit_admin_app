import 'package:admin/controllers/controller%20constants.dart';
import 'package:admin/models/demo_users.dart';
import 'package:admin/models/cours_data.dart';
import 'package:data_table_2/data_table_2.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../../constants.dart';

class Courses extends StatelessWidget {
  const Courses({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(defaultPadding),
      decoration: BoxDecoration(
        color: secondaryColor,
        borderRadius: const BorderRadius.all(Radius.circular(10)),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Courses",
            style: Theme.of(context).textTheme.subtitle1,
          ),
          SizedBox(
            width: double.infinity,
            child: DataTable2(
              columnSpacing: defaultPadding,
              minWidth: 600,
              columns: [
                DataColumn(
                  label: Text("Name"),
                ),
                DataColumn(
                  label: Text("Mentor"),
                ),
                DataColumn(
                  label: Text("Number of students"),
                ),
                DataColumn(
                  label: Text("Number of sessions"),
                ),
                DataColumn(
                  label: Text("Description"),
                ),
              ],
              rows: List.generate(
                course_data.length,
                (index) => recentFileDataRow(course_data[index], index),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

DataRow recentFileDataRow(Course_data course_dat, index) {
  return DataRow(
    onSelectChanged: (bool) {
      INDEX.course_rec.value = index;
      // INDEX.course_rec.value = 1;
      // print(course_data[value.hashCode].record.length);
      print(INDEX.course_rec.value.hashCode);
      print(index);
      print(course_data[INDEX.course_rec.value.hashCode].record.length);
    },
    cells: [
      DataCell(
        Row(
          children: [
            Image.asset(
              course_dat.icon!,
              height: 30,
              width: 30,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: defaultPadding),
              child: Text(course_dat.name!),
            ),
          ],
        ),
      ),
      DataCell(Text(course_dat.mentor!)),
      DataCell(Text(course_dat.no_of_students!)),
      DataCell(Text(course_dat.no_of_sessions!)),
      DataCell(Text(
        course_dat.desc!,
        style: TextStyle(fontSize: 8),
      )),
    ],
  );
}
