import 'package:admin/constants.dart';
import 'package:admin/controllers/MenuController.dart';
import 'package:admin/models/users_courses.dart';
import 'package:admin/screens/main/main_screen.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Admin Panel',
      theme: ThemeData.light().copyWith(
        scaffoldBackgroundColor: bgColor,
        textTheme: GoogleFonts.poppinsTextTheme(Theme.of(context).textTheme)
            .apply(bodyColor: Colors.white),
        canvasColor: secondaryColor,
      ),
      home: MultiProvider(
        providers: [
          ChangeNotifierProvider(
            create: (context) => MenuController(),
          ),
        ],
        child: MainScreen(),
      ),
    );
  }
}

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: listOfItem.length,
      child: Scaffold(
        appBar: AppBar(
          title: Text('Restaurants'),
          bottom: TabBar(
            tabs: listOfItem
                .map((category) => Tab(text: category['user_name'].toString()))
                .toList(),
          ),
        ),
        body: TabBarView(
          children: listOfItem
              .map((category) => Column(
                    children: (category['list_of_courses']
                            as List<Map<String, dynamic>>)
                        .map((restaurant) => Column(
                              children: [
                                Text(restaurant['records'].toString()),
                              ],
                            ))
                        .toList(),
                  ))
              .toList(),
        ),
      ),
    );
  }
}
