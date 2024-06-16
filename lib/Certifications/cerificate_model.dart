class CertificateModel {
  final String name;
  final String organization;
  final String date;
  final String skills;
  final String credential;

  CertificateModel({
    required this.name,
    required this.organization,
    required this.date,
    required this.skills,
    required this.credential,
  });
}

List<CertificateModel> certificateList = [
  CertificateModel(
    name: 'JAVA Fundamentals',
    organization: 'IBM',
    date: 'OCT 2023',
    skills: 'Java',
    credential:  'https://drive.google.com/file/d/16amYeCJo94JNaCOew3XCXhbGIG22ANUZ/view?usp=drive_link',
  ),
  CertificateModel(
    name: 'SQL Database',
    organization: 'IBM',
    date: 'OCT 2023',
    skills: 'SQL & Relational Database',
    credential:  'https://drive.google.com/file/d/1xDVwGIbSa3AzxWtYGwQTcmZF6O4tO5Pw/view',
  ),
  CertificateModel(
    name: 'DevOps Fundamentals',
    organization: 'IBM',
    date: 'OCT 2023',
    skills: 'DevOps CI CD',
    credential:  'https://drive.google.com/file/d/16XJGQnjfz0yfou6yQHMdorgokHxRSptE/view?usp=drive_link',
  ),
  
];
