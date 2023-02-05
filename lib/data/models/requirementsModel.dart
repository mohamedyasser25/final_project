class Experience {
  final String ID;
  final String experienceYears;
  final String qualifications;

  Experience(
    this.ID,
    this.experienceYears,
    this.qualifications,
  );
  factory Experience.fromJson(jsonData) {
    return Experience(
      jsonData['id'],
      jsonData[' companyID'],
      jsonData[' qualifications'],
    );
  }
}
