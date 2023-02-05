class Company {
  final String ID;
  final String hrID;
  final String name;
  final String email;
  final String location;
  final int phone;
  final int noEmployee;
  final String specialization;
  Company(this.ID, this.name, this.email, this.phone, this.specialization,
      this.location, this.hrID, this.noEmployee);
  factory Company.fromJson(jsonData) {
    return Company(
      jsonData['id'],
      jsonData['name'],
      jsonData['email'],
      jsonData['phone'],
      jsonData['specialization'],
      jsonData['hrID'],
      jsonData['location'],
      jsonData['no employee'],
    );
  }
}
