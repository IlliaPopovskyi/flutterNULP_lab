class Person {
  final String firstName;
  final String middleName;
  final String city;
  final DateTime dateBirth;

  const Person(
      {required this.firstName,
      required this.middleName,
      required this.city,
      required this.dateBirth});

  factory Person.fromJson(Map<String, dynamic> json) {
    return Person(
      firstName: json['firstName'],
      middleName: json['middleName'],
      city: json['city'],
      dateBirth: DateTime.parse(json['dateBirth']),
    );
  }
}
