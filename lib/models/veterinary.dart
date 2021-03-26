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
  var costPerUnit;

  var description;

  var title;

  var unit;

  Service(this.title, this.description, this.costPerUnit, this.unit);
}

List<Veterinary> getVets() {
  return [
    Veterinary(23, "Dr", "George", "Ndirangu", "Livestock Vet", "+254746649576",
        "ndirangu.mepawa@gmail.com", "4th Floor Bihi Towers", [
      Service("TB Vaccination",
          "Vaccine for cows and goats administered via injection", 300, "cow"),
      Service("Artificila Insemination",
          "Vaccine for cows and goats administered via injection", 200, "cow"),
      Service("General Checkup",
          "Vaccine for cows and goats administered via injection", 500, "hour")
    ]),
    Veterinary(24, "Dr", "George", "George", "Livestock Vet", "+254746649576",
        "ndirangu.mepawa@gmail.com", "4th Floor Bihi Towers", [
      Service("TB Vaccination",
          "Vaccine for cows and goats administered via injection", 300, "cow"),
      Service("Artificila Insemination",
          "Vaccine for cows and goats administered via injection", 200, "cow"),
      Service("General Checkup",
          "Vaccine for cows and goats administered via injection", 500, "hour")
    ]),
    Veterinary(25, "Dr", "Kitu", "Kidogo", "Livestock Vet", "+254746649576",
        "ndirangu.mepawa@gmail.com", "4th Floor Bihi Towers", [
      Service("TB Vaccination",
          "Vaccine for cows and goats administered via injection", 300, "cow"),
      Service("Artificila Insemination",
          "Vaccine for cows and goats administered via injection", 200, "cow"),
      Service("General Checkup",
          "Vaccine for cows and goats administered via injection", 500, "hour")
    ]),
    Veterinary(26, "Dr", "Maureen", "Gakonyo", "Livestock Vet", "+254746649576",
        "ndirangu.mepawa@gmail.com", "4th Floor Bihi Towers", [
      Service("TB Vaccination",
          "Vaccine for cows and goats administered via injection", 300, "cow"),
      Service("Artificila Insemination",
          "Vaccine for cows and goats administered via injection", 200, "cow"),
      Service("General Checkup",
          "Vaccine for cows and goats administered via injection", 500, "hour")
    ]),
    Veterinary(27, "Dr", "Peter", "Wasike", "Livestock Vet", "+254746649576",
        "ndirangu.mepawa@gmail.com", "4th Floor Bihi Towers", [
      Service("TB Vaccination",
          "Vaccine for cows and goats administered via injection", 300, "cow"),
      Service("Artificila Insemination",
          "Vaccine for cows and goats administered via injection", 200, "cow"),
      Service("General Checkup",
          "Vaccine for cows and goats administered via injection", 500, "hour")
    ])
  ];
}
