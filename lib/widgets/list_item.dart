class ListItem {
  String? image;
  String? name;
  String? location;
  String? dutyHour;
  String? jobName;
  String? dutyTime;
  String? rate;
  String? typeJob;
  String? businessName;
  String? businessAddress;
  String? addressCode;
  String? recurring;
  String? startingDate;
  String? recurringForWeek;
  String? totalHours;
  String? comments;
  ListItem(
      {this.name,
      this.image,
      this.location,
      this.dutyHour,
      this.dutyTime,
      this.rate,
      this.typeJob,
      this.businessName,
      this.addressCode,
      this.businessAddress,
      this.jobName,
      this.comments,
      this.recurring,
      this.recurringForWeek,
      this.startingDate,
      this.totalHours});
}

List<String> daysList = [
  'Monday Start: 09:00-Monday End: 17:00     ',
  'Tuesday Start: 09:00-Tuesday End: 17:00',
  'Wednesday Start: 09:00-Wednesday End: 17:00',
  'Thursday Start: 09:00-Thursday End: 17:00',
  'Friday Start: 09:00-Friday End: 17:00',
  ' Saturday Start: 00:00-Saturday End: 00:00',
  'Sunday Start: 00:00-Sunday End: 00:00 ',
];
List<String> option = [
  'Yes',
  'No',
];
List<String> basis = [
  'Full Time',
  'Part Time',
  'Casual',
];
List<String> area = [
  'Dublin 1',
  'Dublin 2',
  'Dublin 3',
  'Dublin 4',
];
List<String> servicesList = [
  'SECURITY GUARD',
  'DOOR SUPERVISOR',
  'ENFORCEMENT',
  'EVENTS',
  'MONITORING',
];
List<ListItem> securityGuard = [
  ListItem(
    image: 'assets/images/security.jpeg',
    jobName: 'Home Security',
    location: 'sector 2 Islamabad',
    dutyHour: '8 Hours',
    dutyTime: 'Mid Night',
    rate: '15\$',
    typeJob: 'Full Time Job',
  ),
  ListItem(
    image: 'assets/images/security_guard.jpeg',
    jobName: 'Street Security',
    location: 'Nasirbagh Peshawar',
    dutyHour: '8 Hours',
    dutyTime: 'Mid Night',
    rate: '15\$',
    typeJob: 'Full Time Job',
  ),
  ListItem(
    image: 'assets/images/security_guard.jpeg',
    jobName: 'Market Security',
    location: 'Garden Town Punjab',
    dutyHour: '8 Hours',
    dutyTime: 'Mid Night',
    rate: '15\$',
    typeJob: 'Full Time Job',
  ),
  ListItem(
    image: 'assets/images/security.jpeg',
    jobName: 'Security Guard',
    location: 'Chundrigar Road Sindh',
    dutyHour: '8 Hours',
    dutyTime: 'Mid Night',
    rate: '15\$',
    typeJob: 'Full Time Job',
  ),
];
List<ListItem> doorSupervisor = [
  ListItem(
      image: 'assets/images/doorSuperviser.jpeg',
      jobName: 'Gem door Supervisor',
      location: 'sector 2 Islamabad'),
  ListItem(
      image: 'assets/images/doorSupervisor2.jpeg',
      jobName: 'Street Security',
      location: 'Nasirbagh Peshawar'),
  ListItem(
      image: 'assets/images/doorSupervisor3.jpeg',
      jobName: 'Market Security',
      location: 'Garden Town Punjab'),
  ListItem(
      image: 'assets/images/doorSupervisor2.jpeg',
      jobName: 'Street Security',
      location: 'Nasirbagh Peshawar'),
  ListItem(
      image: 'assets/images/doorSuperviser.jpeg',
      jobName: 'Gem door Supervisor',
      location: 'sector 2 Islamabad'),
  ListItem(
    image: 'assets/images/doorSupervisor3.jpeg',
    jobName: 'Market Security',
    location: 'Garden Town Punjab',
  ),
];
List<ListItem> enforcement = [
  ListItem(
    image: 'assets/images/enforcement.jpeg',
    jobName: 'Gem door Supervisor',
    location: 'sector 2 Islamabad',
    dutyHour: '8 Hours',
    dutyTime: 'Mid Night',
    rate: '15\$',
    typeJob: 'Full Time Job',
  ),
  ListItem(
    image: 'assets/images/enforcement2.jpeg',
    jobName: 'Street Security',
    location: 'Nasirbagh Peshawar',
    dutyHour: '8 Hours',
    dutyTime: 'Mid Night',
    rate: '15\$',
    typeJob: 'Full Time Job',
  ),
  ListItem(
    image: 'assets/images/enforcement3.jpeg',
    jobName: 'Market Security',
    location: 'Garden Town Punjab',
    dutyHour: '8 Hours',
    dutyTime: 'Mid Night',
    rate: '15\$',
    typeJob: 'Full Time Job',
  ),
  ListItem(
    image: 'assets/images/enforcement2.jpeg',
    jobName: 'Street Security',
    location: 'Nasirbagh Peshawar',
    dutyHour: '8 Hours',
    dutyTime: 'Mid Night',
    rate: '15\$',
    typeJob: 'Full Time Job',
  ),
  ListItem(
    image: 'assets/images/doorSupervisor2.jpeg',
    jobName: 'Street Security',
    location: 'Nasirbagh Peshawar',
    dutyHour: '8 Hours',
    dutyTime: 'Mid Night',
    rate: '15\$',
    typeJob: 'Full Time Job',
  ),
];
List<ListItem> monitoring = [
  ListItem(
      image: 'assets/images/monitoring.jpeg',
      jobName: 'Gem door Supervisor',
      location: 'sector 2 Islamabad',
      dutyHour: '8 Hours',
      dutyTime: 'Mid Night',
      rate: '15\$',
      typeJob: 'Full Time Job',
      businessName: ''),
  ListItem(
    image: 'assets/images/monitoring4.jpeg',
    jobName: 'Street Security',
    location: 'Nasirbagh Peshawar',
    dutyHour: '8 Hours',
    dutyTime: 'Mid Night',
    rate: '15\$',
    typeJob: 'Full Time Job',
  ),
  ListItem(
    image: 'assets/images/monitoring2.jpeg',
    jobName: 'Market Security',
    location: 'Garden Town Punjab',
    dutyHour: '8 Hours',
    dutyTime: 'Mid Night',
    rate: '15\$',
    typeJob: 'Full Time Job',
  ),
  ListItem(
    image: 'assets/images/monitoring3.jpeg',
    jobName: 'Street Security',
    location: 'Nasirbagh Peshawar',
    dutyHour: '8 Hours',
    dutyTime: 'Mid Night',
    rate: '15\$',
    typeJob: 'Full Time Job',
  ),
  ListItem(
    image: 'assets/images/monitoring4.jpeg',
    jobName: 'Street Security',
    location: 'Nasirbagh Peshawar',
    dutyHour: '8 Hours',
    dutyTime: 'Mid Night',
    rate: '15\$',
    typeJob: 'Full Time Job',
  ),
  ListItem(
    image: 'assets/images/monitoring2.jpeg',
    jobName: 'Market Security',
    location: 'Garden Town Punjab',
    dutyHour: '8 Hours',
    dutyTime: 'Mid Night',
    rate: '15\$',
    typeJob: 'Full Time Job',
  ),
];
List<ListItem> event = [
  ListItem(
    image: 'assets/images/events.jpeg',
    jobName: 'Gem door Supervisor',
    location: 'sector 2 Islamabad',
    dutyHour: '8 Hours',
    dutyTime: 'Mid Night',
    rate: '15\$',
    typeJob: 'Full Time Job',
  ),
  ListItem(
    image: 'assets/images/events3.jpeg',
    jobName: 'Street Security',
    location: 'Nasirbagh Peshawar',
    dutyHour: '8 Hours',
    dutyTime: 'Mid Night',
    rate: '15\$',
    typeJob: 'Full Time Job',
  ),
  ListItem(
    image: 'assets/images/event2.jpeg',
    jobName: 'Market Security',
    location: 'Garden Town Punjab',
    dutyHour: '8 Hours',
    dutyTime: 'Mid Night',
    rate: '15\$',
    typeJob: 'Full Time Job',
  ),
  ListItem(
    image: 'assets/images/events3.jpeg',
    jobName: 'Street Security',
    location: 'Nasirbagh Peshawar',
    dutyHour: '8 Hours',
    dutyTime: 'Mid Night',
    rate: '15\$',
    typeJob: 'Full Time Job',
  ),
  ListItem(
    image: 'assets/images/events.jpeg',
    jobName: 'Gem door Supervisor',
    location: 'sector 2 Islamabad',
    dutyHour: '8 Hours',
    dutyTime: 'Mid Night',
    rate: '15\$',
    typeJob: 'Full Time Job',
  ),
  ListItem(
    image: 'assets/images/event2.jpeg',
    jobName: 'Market Security',
    location: 'Garden Town Punjab',
    dutyHour: '8 Hours',
    dutyTime: 'Mid Night',
    rate: '14\$',
    typeJob: 'Full Time Job',
  ),
];
List<ListItem> offeredJob = [
  ListItem(
      image: 'assets/images/profile1.jpeg',
      name: 'John Doe',
      jobName: 'Market Security',
      location: 'sector 2 Islamabad',
      dutyHour: '10 Hours',
      dutyTime: 'Mid Night',
      rate: '18 €',
      typeJob: 'Full Time Job',
      businessName: 'Supervisor',
      businessAddress: 'Peshawar',
      addressCode: '19910',
      recurring: 'Yes',
      recurringForWeek: 'No',
      totalHours: '8 hours',
      comments: 'This is simple comments'),
  ListItem(
      image: 'assets/images/profile2.jpeg',
      name: 'jane Smith',
      jobName: 'Market Security',
      location: 'Garden Town Punjab',
      dutyHour: '6 Hours',
      dutyTime: 'Evening Time',
      rate: '10 €',
      typeJob: 'Part Time Job',
      businessName: 'Security Guard',
      businessAddress: 'lahour',
      addressCode: '19920',
      recurring: 'Yes',
      recurringForWeek: 'No',
      totalHours: '8 hours',
      comments: 'This is simple comments'),
  ListItem(
      image: 'assets/images/profile3.jpeg',
      name: 'Bob Johnson',
      jobName: 'Street Security',
      location: 'Garden Town karachi',
      dutyHour: '8 Hours',
      dutyTime: 'Mid Night',
      rate: '10 €',
      typeJob: 'Full Time Job',
      businessName: 'Security Guard',
      businessAddress: 'karachi',
      addressCode: '18920',
      recurring: 'Yes',
      recurringForWeek: 'No',
      totalHours: '8 hours',
      comments: 'This is simple comments'),
  ListItem(
      image: 'assets/images/profile4.jpeg',
      name: 'Barbar ayaw',
      location: 'Nasirbagh Peshawar',
      dutyHour: '4 Hours',
      dutyTime: 'Morning Time',
      jobName: 'Street Security',
      rate: '20 €',
      typeJob: 'Full Time Job',
      businessName: 'Security Guard',
      businessAddress: 'peshawar',
      addressCode: '19520',
      recurring: 'Yes',
      recurringForWeek: 'No',
      totalHours: '8 hours',
      comments: 'This is simple comments'),
  ListItem(
      image: 'assets/images/profile5.jpeg',
      name: 'Nalom akram',
      jobName: 'Gem door Supervisor',
      location: 'Nasirbagh lahour',
      dutyHour: '8 Hours',
      dutyTime: 'Mid Night',
      rate: '15 €',
      typeJob: 'Full Time Job',
      businessName: 'Supervisor',
      businessAddress: 'lahour',
      addressCode: '19920',
      recurring: 'Yes',
      recurringForWeek: 'No',
      totalHours: '8 hours',
      comments: 'This is simple comments'),
];
