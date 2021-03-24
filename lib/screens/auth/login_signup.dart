import 'package:flutter/material.dart';
import 'package:vet_flutter/screens/auth/login/login.dart';
import 'package:vet_flutter/screens/auth/signup/signup.dart';

class LoginSignup extends StatefulWidget {
  late final bool isNewUser;

  @override
  _LoginSignupState createState() => _LoginSignupState();

  LoginSignup() {
    this.isNewUser = false; //TODO fecth this from some source
  }
}

class _LoginSignupState extends State<LoginSignup> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: 2,
        child: Scaffold(
          appBar: null,
          body: Container(
            color: Colors.white,
            child: Column(
              children: <Widget>[
                Expanded(
                  flex: 4,
                  child: Container(
                    padding: EdgeInsets.fromLTRB(0, 0, 0, 35),
                    decoration: BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage("assets/images/plain_backdrop.png"),
                          fit: BoxFit.fitWidth,
                          alignment: Alignment.bottomCenter),
                    ),
                    child: Align(
                        alignment: Alignment.bottomCenter,
                        child: FractionallySizedBox(
                          child: TabBar(
                            tabs: [
                              Tab(
                                  child: Text(
                                "Log In",
                                style: TextStyle(fontSize: 18),
                              )),
                              Tab(
                                  child: Text(
                                "Sign Up",
                                style: TextStyle(fontSize: 18),
                              )),
                            ],
                          ),
                          widthFactor: 0.6,
                        )),
                  ),
                ),
                Expanded(
                    flex: 6,
                    child: FractionallySizedBox(
                      child: TabBarView(
                        children: [LogIn(), SignUp()],
                      ),
                      widthFactor: 0.7,
                    )),
              ],
            ),
          ),
        ));
  }
}
