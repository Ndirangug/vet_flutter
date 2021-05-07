import 'package:http/http.dart' as http;

void sendEmail(String time, String doctor, String name, String recepient) {
  Map<String, String> data = {
    'service_id': 'service_9nijfkb',
    'template_id': 'template_ulpa7br',
    'user_id': 'user_7yP9yP1S2q2Z46bRzUXtO',
    'template_params': {
      'time': time,
      'doctor': doctor,
      'name': name,
      'recepient': recepient
    }.toString()
  };

  http
      .post(Uri.https("api.emailjs.com", "/api/v1.0/email/send"),
          headers: {"ContentType": "application/json"}, body: data)
      .then((res) => print("code ${res.statusCode} messae ${res.body}"))
      .catchError((error) => print(error));
}
