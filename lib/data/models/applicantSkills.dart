class ApplicantSkills {
  final String id;
  final String skillName;

  ApplicantSkills(this.id, this.skillName);
  factory ApplicantSkills.fromJson(jsonData) {
    return ApplicantSkills(jsonData['id'], jsonData['skillName']);
  }
}
