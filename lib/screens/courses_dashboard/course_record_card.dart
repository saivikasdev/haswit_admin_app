import 'package:admin/controllers/controller%20constants.dart';
import 'package:admin/models/cours_data.dart';
import 'package:admin/models/demo_users.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:url_launcher/url_launcher.dart';

import '../../../constants.dart';

Container course_rec_card(
    Course_data course_dat, index, BuildContext context, value) {
  return Container(
    margin: EdgeInsets.only(top: defaultPadding),
    padding: EdgeInsets.all(defaultPadding),
    decoration: BoxDecoration(
      border: Border.all(width: 2, color: primaryColor.withOpacity(0.15)),
      borderRadius: const BorderRadius.all(
        Radius.circular(defaultPadding),
      ),
    ),
    child: Row(
      children: [
        Expanded(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: defaultPadding),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  course_dat.record![index]['title'],
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                ),
                SizedBox(
                  height: 10,
                ),
                InkWell(
                  onTap: () async {
                    if (!await launch(course_dat.record![index]['youtubelink']))
                      throw 'Could not launch ';
                  },
                  child: Text(
                    course_dat.record![index]['youtubelink'],
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Column(
                  children: [
                    Text(
                      course_dat.record![index]['description'],
                      maxLines: 10,
                      overflow: TextOverflow.ellipsis,
                    ),
                  ],
                ),
                SizedBox(
                  height: 10,
                ),
                Row(
                  children: List.generate(
                    course_data[INDEX.course_rec.value]
                        .record[index]['resources']
                        .length,
                    (indx) => InkWell(
                      onTap: () async {
                        if (!await launch(
                            course_dat.record![index]['resourceslink'][indx]))
                          throw 'Could not launch ';
                      },
                      child: Container(
                        child: Center(
                          child: Text(
                            '${course_dat.record![index]['resources'][indx]}',
                            maxLines: 10,
                            overflow: TextOverflow.ellipsis,
                            style: TextStyle(
                                fontSize: 10,
                                color: Color.fromARGB(255, 255, 255, 255)),
                          ),
                        ),
                        decoration: BoxDecoration(
                          border: Border.all(width: 1, color: Colors.white),
                          borderRadius: BorderRadius.all(Radius.circular(10)),
                        ),
                        height: MediaQuery.of(context).size.height * 0.1 * 0.2,
                        width: MediaQuery.of(context).size.width * 0.04,
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
              ],
            ),
          ),
        ),
        Icon(
          Icons.arrow_forward_ios,
          color: Colors.white70,
        ),
      ],
    ),
  );
}
