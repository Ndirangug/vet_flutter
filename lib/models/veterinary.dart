class Veterinary {
  var vetId;

  var firstName;

  var lastName;

  var title;

  var summary;

  var address;

  var email;

  var phone;

  List<Service> services;

  Veterinary(this.vetId, this.title, this.firstName, this.lastName,
      this.summary, this.phone, this.email, this.address, this.services);
}

class Service {
  var serviceID;

  double costPerUnit;

  String description;

  String title;

  String unit;

  Service(this.serviceID, this.title, this.description, this.costPerUnit,
      this.unit);
}

List<Veterinary> getVets() {
  return [
    Veterinary(23, "Dr", "George", "Ndirangu", "Livestock Vet", "+254746649576",
        "ndirangu.mepawa@gmail.com", "4th Floor Bihi Towers", [
      Service(
          1,
          "TB Vaccination",
          "Vaccine for cows and goats administered via injection",
          300.toDouble(),
          "cow"),
      Service(
          2,
          "Artificila Insemination",
          "Vaccine for cows and goats administered via injection",
          200.toDouble(),
          "cow"),
      Service(
          3,
          "General Checkup",
          "Vaccine for cows and goats administered via injection",
          500.toDouble(),
          "hour")
    ]),
    Veterinary(24, "Dr", "George", "George", "Livestock Vet", "+254746649576",
        "ndirangu.mepawa@gmail.com", "4th Floor Bihi Towers", [
      Service(
          4,
          "TB Vaccination",
          "Vaccine for cows and goats administered via injection",
          300.toDouble(),
          "cow"),
      Service(
          5,
          "Artificila Insemination",
          "Vaccine for cows and goats administered via injection",
          200.toDouble(),
          "cow"),
      Service(
          6,
          "General Checkup",
          "Vaccine for cows and goats administered via injection",
          500.toDouble(),
          "hour")
    ]),
    Veterinary(25, "Dr", "Kitu", "Kidogo", "Livestock Vet", "+254746649576",
        "ndirangu.mepawa@gmail.com", "4th Floor Bihi Towers", [
      Service(
          7,
          "TB Vaccination",
          "Vaccine for cows and goats administered via injection",
          300.toDouble(),
          "cow"),
      Service(
          8,
          "Artificila Insemination",
          "Vaccine for cows and goats administered via injection",
          200.toDouble(),
          "cow"),
      Service(
          9,
          "General Checkup",
          "Vaccine for cows and goats administered via injection",
          500.toDouble(),
          "hour")
    ]),
    Veterinary(26, "Dr", "Maureen", "Gakonyo", "Livestock Vet", "+254746649576",
        "ndirangu.mepawa@gmail.com", "4th Floor Bihi Towers", [
      Service(
          10,
          "TB Vaccination",
          "Vaccine for cows and goats administered via injection",
          300.toDouble(),
          "cow"),
      Service(
          11,
          "Artificila Insemination",
          "Vaccine for cows and goats administered via injection",
          200.toDouble(),
          "cow"),
      Service(
          12,
          "General Checkup",
          "Vaccine for cows and goats administered via injection",
          500.toDouble(),
          "hour")
    ]),
    Veterinary(27, "Dr", "Peter", "Wasike", "Livestock Vet", "+254746649576",
        "ndirangu.mepawa@gmail.com", "4th Floor Bihi Towers", [
      Service(
          13,
          "TB Vaccination",
          "Vaccine for cows and goats administered via injection",
          300.toDouble(),
          "cow"),
      Service(
          14,
          "Artificila Insemination",
          "Vaccine for cows and goats administered via injection",
          200.toDouble(),
          "cow"),
      Service(
          15,
          "General Checkup",
          "Vaccine for cows and goats administered via injection",
          500.toDouble(),
          "hour")
    ])
  ];
}
