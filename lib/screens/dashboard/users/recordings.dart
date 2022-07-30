import 'package:admin/controllers/controller%20constants.dart';
import 'package:admin/models/cours_data.dart';
import 'package:admin/models/demo_users.dart';
import 'package:admin/models/recordings_data.dart';
import 'package:data_table_2/data_table_2.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:url_launcher/url_launcher.dart';

import '../../../constants.dart';

class recordings extends StatelessWidget {
  const recordings({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder(
      valueListenable: INDEX.course_rec,
      builder: (context, value, child) => Container(
        width: MediaQuery.of(context).size.width,
        padding: EdgeInsets.all(defaultPadding),
        decoration: BoxDecoration(
          color: secondaryColor,
          borderRadius: const BorderRadius.all(Radius.circular(10)),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Recordings",
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
                    label: Text("Youtube link"),
                  ),
                  DataColumn(
                    label: Text("Description"),
                  ),
                  DataColumn(
                    label: Text("Resources"),
                  ),
                ],
                rows: List.generate(
                  2,
                  (index) => recordRow(course_data[value.hashCode], index),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

DataRow recordRow(Course_data course_data, index) {
  return DataRow(
    cells: [
      DataCell(
        Text(course_data.record![index]['title']),
      ),
      DataCell(InkWell(
          onTap: () async {
            print(course_data.record?.length);
            if (!await launch(course_data.record![index]['youtubelink']))
              throw 'Could not launch url';
          },
          child: Text(course_data.record![index]['youtubelink']))),
      DataCell(Text(course_data.record![index]['description'])),
      DataCell(
        Row(
          children: List.generate(
            course_data.record![index]['resources'].length,
            (indx) => InkWell(
                onTap: () async {
                  if (!await launch(
                      course_data.record![index]['resourceslink'[indx]]))
                    throw 'Could not launch ${course_data.record![indx]['resourceslink']}';
                },
                child: Text(
                    "${course_data.record![index]['resources'][indx]}  |  ")),
          ),

          // [
          //   InkWell(
          //       onTap: () async {
          //         if (!await launch(
          //             course_data.record![index]['resourceslink'[1]]))
          //           throw 'Could not launch ${course_data.record![1]['resourceslink']}';
          //       },
          //       child:
          //           Text("${course_data.record![index]['resources'][0]}  |  ")),
          // ],
        ),
      ),
    ],
  );
}


//  List.generate(
//                 fileInfo.resouces.length,
//                 (index) =>Text(fileInfo.resouces?[index]),
//               ),

        // InkWell(
        //   onTap: () async {
        //     if (!await launch(fileInfo.resourceslink?[1]))
        //       throw 'Could not launch ${fileInfo.youtubelink!}';
        //   },
        //   child: Text(fileInfo.resouces?[1]),
        //   )