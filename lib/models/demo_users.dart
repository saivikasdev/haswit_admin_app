class Users {
  final String? icon, title, date, size, phone, whatsapp, gmail, github;
  final List? courses;

  Users(
      {this.icon,
      this.courses,
      this.title,
      this.date,
      this.size,
      this.github,
      this.gmail,
      this.phone,
      this.whatsapp});
}

List users_ = [
  Users(
    icon: "assets/images/profile_pic.png",
    title: "sravani",
    phone: "938383839",
    whatsapp: "7949393902",
    gmail: "hardious@gmail.com",
    github: "stack@github",
    courses: [
      {
        'name': 'flutter',
        'mentor': 'anand',
        'icon': 'assets/icons/unknown.svg'
      },
    ],
  ),
  Users(
    icon: "assets/images/profile_pic.png",
    title: "master",
    phone: "938383839",
    whatsapp: "7949393902",
    gmail: "hardious@gmail.com",
    github: "stack@github",
    courses: [
      {'name': 'html', 'mentor': 'fazad', 'icon': 'assets/icons/flutter.svg'},
      {'name': 'css', 'mentor': 'mahesh', 'icon': 'assets/icons/python.svg'},
    ],
  ),
];
