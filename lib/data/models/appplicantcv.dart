class ApplicantCv {
  final String ID;
  final String dateOfBirth;
  final String city;
  final String degree;
  final String nationallty;
  final String jobtitle;
  final String gender;
  ApplicantCv(this.ID, this.dateOfBirth, this.city, this.nationallty,
      this.jobtitle, this.degree, this.gender);
  factory ApplicantCv.fromJson(jsonData) {
    return ApplicantCv(
      jsonData['id'],
      jsonData['date of birth'],
      jsonData['city'],
      jsonData['phone'],
      jsonData['nationallty'],
      jsonData['job title'],
      jsonData['gender'],
    );
  }
}
