class Company {
  final String ID;
  final int hrID;
  final int phone;
  final String name;
  final String email;
  final String location;
  final String department;
  final String specialization;
  Company(
      {required this.ID,
      required this.hrID,
      required this.department,
      required this.name,
      required this.email,
      required this.phone,
      required this.location,
      required this.specialization});
  Map<String, dynamic> tojson() => {};
}
