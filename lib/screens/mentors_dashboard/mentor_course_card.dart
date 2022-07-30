import 'package:admin/models/demo_users.dart';
import 'package:admin/models/mentor_data.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../constants.dart';

Container mentor_course_card(Mentor_data mentor, index, BuildContext context) {
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
        SizedBox(
          height: 20,
          width: 20,
          child: SvgPicture.asset(mentor.courses![index]['icon']),
        ),
        Expanded(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: defaultPadding),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  mentor.courses![index]['name'],
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                ),
                Text(
                  "${mentor.courses![index]['sessions']}",
                  style: Theme.of(context)
                      .textTheme
                      .caption!
                      .copyWith(color: Colors.white70),
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
