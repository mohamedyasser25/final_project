class Jobs {
  final String ID;
  final String start;
  final String end;
  final String role;
  final String salary;
  final String title;
  final String description;

  Jobs(
    this.ID,
    this.start,
    this.end,
    this.salary,
    this.role,
    this.title,
    this.description,
  );
  factory Jobs.fromJson(jsonData) {
    return Jobs(
      jsonData['id'],
      jsonData[' salary'],
      jsonData[' end'],
      jsonData['start'],
      jsonData[' role'],
      jsonData[' title'],
      jsonData[' description'],
    );
  }
}
