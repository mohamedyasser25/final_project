class Education {
  final String ID;
  final String educationlevel;
  final String faculty;
  final String garduationDate;
  final String startDate;
  final String universty;
  final String certification;
  Education(this.ID, this.educationlevel, this.faculty, this.startDate,
      this.universty, this.garduationDate, this.certification);
  factory Education.fromJson(jsonData) {
    return Education(
      jsonData['id'],
      jsonData['Education level'],
      jsonData['Faculty'],
      jsonData['Garduation Date'],
      jsonData['Start date'],
      jsonData['universty'],
      jsonData['certification'],
    );
  }
}
