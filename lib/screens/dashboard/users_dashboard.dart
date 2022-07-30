import 'package:admin/controllers/controller%20constants.dart';
import 'package:admin/responsive.dart';
import 'package:admin/screens/courses_dashboard/corses.dart';
import 'package:admin/screens/courses_dashboard/course_records.dart';
import 'package:admin/screens/dashboard/users/my_fields.dart';
import 'package:admin/screens/dashboard/users/recordings.dart';
import 'package:admin/screens/mentors_dashboard/mentor_courses.dart';
import 'package:admin/screens/mentors_dashboard/mentors.dart';
import 'package:admin/screens/post_notification/notification.dart';
import 'package:flutter/material.dart';

import '../../constants.dart';
import 'users/header.dart';

import 'users/users.dart';
import 'users/user_courses.dart';

class DashboardScreen extends StatelessWidget {
  List<dynamic> pages = [users(), mentors(), Courses(), post_noti()];
  List<dynamic> pages1 = [
    courses(),
    mentor_courses(),
    Container(),
    Container(),
  ];
  List<dynamic> pages2 = [
    Container(),
    Container(),
    course_records(),
    Container(),
  ];
  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder(
      valueListenable: INDEX.index,
      builder: (context, value, child) => Scaffold(
        body: SafeArea(
          child: SingleChildScrollView(
            primary: false,
            padding: EdgeInsets.all(defaultPadding),
            child: Column(
              children: [
                Header(),
                SizedBox(height: defaultPadding),
                Column(
                  children: [
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Expanded(
                          flex: 10,
                          child: Column(
                            children: [
                              // MyFiles(),
                              SizedBox(height: defaultPadding),
                              pages[value.hashCode],
                              if (Responsive.isMobile(context))
                                SizedBox(height: defaultPadding),
                              if (Responsive.isMobile(context)) //courses(),
                                SizedBox(
                                  height: 200,
                                ),
                            ],
                          ),
                        ),
                        if (!Responsive.isMobile(context))
                          SizedBox(width: defaultPadding),
                        // On Mobile means if the screen is less than 850 we dont want to show it
                        if (!Responsive.isMobile(context))
                          Expanded(
                            flex: (value.hashCode == 2) ? -1 : 3,
                            child: pages1[value.hashCode],
                          ),
                      ],
                    ),
                  ],
                ),
                // Expanded(
                //   flex: 4,
                Column(
                  children: [
                    //MyFiles(),
                    SizedBox(
                      height: 10,
                    ),
                    pages2[value.hashCode],
                    if (Responsive.isMobile(context))
                      SizedBox(height: defaultPadding),
                    SizedBox(
                      height: 200,
                    ),
                  ],
                ),
                // ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
