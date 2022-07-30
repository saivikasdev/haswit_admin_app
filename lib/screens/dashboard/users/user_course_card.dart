import 'package:admin/models/demo_users.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../constants.dart';

Container course_card(Users users, index, BuildContext context) {
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
          child: SvgPicture.asset(users.courses![index]['icon']),
        ),
        Expanded(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: defaultPadding),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  users.courses![index]['name'],
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                ),
                Text(
                  users.courses![index]['mentor'],
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
