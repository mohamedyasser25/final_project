class Interview {
  final String ID;
  final String date;
  final String finalDecision;
  final String interviewQuestions;
  final String summary;

  Interview(
    this.ID,
    this.date,
    this.finalDecision,
    this.summary,
    this.interviewQuestions,
  );
  factory Interview.fromJson(jsonData) {
    return Interview(
      jsonData['id'],
      jsonData[' summary'],
      jsonData[' finalDecision'],
      jsonData['date'],
      jsonData[' interviewQuestions'],
    );
  }
}
