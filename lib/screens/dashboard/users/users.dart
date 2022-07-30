import 'package:admin/controllers/controller%20constants.dart';
import 'package:admin/models/demo_users.dart';
import 'package:data_table_2/data_table_2.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../../constants.dart';

class users extends StatelessWidget {
  const users({
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
            "Users",
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
                  label: Text("Github"),
                ),
              ],
              rows: List.generate(
                users_.length,
                (index) => recentFileDataRow(users_[index], index),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

DataRow recentFileDataRow(Users fileInfo, index) {
  return DataRow(
    onSelectChanged: (bool) {
      INDEX.user_course_index.value = index;
      print(INDEX.user_course_index.value);
      print(index);
    },
    cells: [
      DataCell(
        Row(
          children: [
            Image.asset(
              fileInfo.icon!,
              height: 30,
              width: 30,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: defaultPadding),
              child: Text(fileInfo.title!),
            ),
          ],
        ),
      ),
      DataCell(Text(fileInfo.phone!)),
      DataCell(Text(fileInfo.whatsapp!)),
      DataCell(Text(fileInfo.gmail!)),
      DataCell(Text(fileInfo.github!)),
    ],
  );
}
