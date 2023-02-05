class Experience {
  final String ID;
  final String name;
  final String gender;
  final int phone;
  final String companyID;

  Experience(
    this.ID,
    this.name,
    this.gender,
    this.companyID,
    this.phone,
  );
  factory Experience.fromJson(jsonData) {
    return Experience(
      jsonData['id'],
      jsonData[' companyID'],
      jsonData[' gender'],
      jsonData['name'],
      jsonData[' phone'],
    );
  }
}
