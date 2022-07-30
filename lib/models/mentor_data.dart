class Mentor_data {
  final String? icon, title, date, size, phone, whatsapp, gmail, work;
  final List? courses;

  Mentor_data(
      {this.icon,
      this.courses,
      this.title,
      this.date,
      this.size,
      this.work,
      this.gmail,
      this.phone,
      this.whatsapp});
}

List mentordata = [
  Mentor_data(
    icon: "assets/images/user_3.png",
    title: "Srinivas",
    phone: "232323839",
    whatsapp: "13313902",
    gmail: "something@gmail.com",
    work: "FLutter developer at naina technologies",
    courses: [
      {
        'name': 'some courses',
        'sessions': 12,
        'icon': 'assets/icons/unknown.svg'
      },
      {
        'name': 'python',
        'sessions': 122,
        'icon': 'assets/icons/sound_file.svg'
      },
    ],
  ),
  Mentor_data(
    icon: "assets/images/user_5.png",
    title: "Srinivas",
    phone: "232323839",
    whatsapp: "13313902",
    gmail: "something@gmail.com",
    work: "FLutter developer at naina technologies",
    courses: [
      {'name': 'c4', 'sessions': 12, 'icon': 'assets/icons/media.svg'},
      {'name': 'c5', 'sessions': 122, 'icon': 'assets/icons/flutter.svg'},
      {'name': 'c4', 'sessions': 12, 'icon': 'assets/icons/media.svg'},
      {'name': 'c4', 'sessions': 12, 'icon': 'assets/icons/media.svg'},
    ],
  ),
];
