import 'package:admin/controllers/controller%20constants.dart';
import 'package:admin/models/demo_users.dart';
import 'package:admin/models/mentor_data.dart';
import 'package:data_table_2/data_table_2.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../../constants.dart';

class mentors extends StatelessWidget {
  const mentors({
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
            "mentors",
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
                  label: Text("Phone"),
                ),
                DataColumn(
                  label: Text("Whatsapp"),
                ),
                DataColumn(
                  label: Text("Gmail"),
                ),
                DataColumn(
                  label: Text("Work"),
                ),
              ],
              rows: List.generate(
                mentordata.length,
                (index) => recentFileDataRow(mentordata[index], index),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

DataRow recentFileDataRow(Mentor_data mentordata, index) {
  return DataRow(
    onSelectChanged: (bool) {
      INDEX.mentor_course_index.value = index;
      print(INDEX.mentor_course_index.value);
      print(index);
    },
    cells: [
      DataCell(
        Row(
          children: [
            Image.asset(
              mentordata.icon!,
              height: 30,
              width: 30,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: defaultPadding),
              child: Text(mentordata.title!),
            ),
          ],
        ),
      ),
      DataCell(Text(mentordata.phone!)),
      DataCell(Text(mentordata.whatsapp!)),
      DataCell(Text(mentordata.gmail!)),
      DataCell(Text(mentordata.work!)),
    ],
  );
}
