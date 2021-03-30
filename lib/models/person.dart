class Person {
  String personId;

  String firstName;

  String lastName;

  String address;

  String email;

  String phone;

  Person(
    this.personId,
    this.firstName,
    this.lastName,
    this.phone,
    this.email,
    this.address,
  );
}

Person getPerson() {
  return Person("16", "George", "Ndirangu", "+254746649576",
      "ndirangu.mepawa@gmail.com", "4th Floor Bihi Towers");
}
