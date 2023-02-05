class Experience {
  final String ID;
  final String companyName;
  final String endDate;
  final String position;
  final String startDate;

  Experience(
    this.ID,
    this.companyName,
    this.endDate,
    this.startDate,
    this.position,
  );
  factory Experience.fromJson(jsonData) {
    return Experience(
      jsonData['id'],
      jsonData['company name'],
      jsonData['company name'],
      jsonData['position'],
      jsonData['start date'],
    );
  }
}
