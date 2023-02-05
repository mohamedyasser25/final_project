class Applicant {
  final String ID;
  final String name;
  final String email;
  final String password;
  final int phone;
  final String specialization;
  Applicant(this.ID, this.name, this.email, this.phone, this.specialization,
      this.password);
  factory Applicant.fromJson(jsonData) {
    return Applicant(
      jsonData['id'],
      jsonData['name'],
      jsonData['email'],
      jsonData['phone'],
      jsonData['specialization'],
      jsonData['password'],
    );
  }
}
