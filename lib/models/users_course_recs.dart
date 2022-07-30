class User_courses {
  final String? icon, name, mentor, ylink, desc, rec_name;
  final List? resc,resc_links;
  User_courses({
    this.resc_links,
    this.icon,
    this.rec_name,
    this.mentor,
    this.name,
    this.ylink,
    this.desc,
    this.resc,
  });
}



List user_courses_rec = [
  User_courses(
    icon: "assets/images/flutter.png",
    rec_name: "dropdown",
    name: "flutter",
    ylink: "www.youtube.com",
    mentor: "nanda",
    desc:
        "some random description for demo or for look for the people all over the world",
    resc: ["Today session","my repo","packages"],
    resc_links: ["https://www.svgrepo.com/vectors/teacher/4","https://www.mars.com/","https://www.mars.com/"]
  ),
  
];
