import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:vet_flutter/screens/auth/fetch_user.dart';
import 'package:vet_flutter/screens/auth/login/login.dart';
import 'package:vet_flutter/screens/auth/signup/signup.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:vet_flutter/screens/discover/discover.dart';

class LoginSignup extends StatefulWidget {
  late final bool isNewUser;

  @override
  _LoginSignupState createState() => _LoginSignupState();

  LoginSignup() {
    this.isNewUser = false; //TODO fecth this from some source
  }
}

class _LoginSignupState extends State<LoginSignup> {
  FirebaseAuth auth = FirebaseAuth.instance;

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
                        children: [
                          LogIn(
                            firebaseAuth: auth,
                          ),
                          SignUp(
                            firebaseAuth: auth,
                          )
                        ],
                      ),
                      widthFactor: 0.7,
                    )),
              ],
            ),
          ),
        ));
  }

  @override
  void initState() {
    super.initState();

    if (FirebaseAuth.instance.currentUser == null) {
    } else {
      fetchUserProfile(FirebaseAuth.instance.currentUser!.email!);
      Navigator.of(context)
          .push(MaterialPageRoute(builder: (context) => Discover(null)));
    }
  }

  void subscribeToAuthChange() {
    FirebaseAuth.instance.idTokenChanges().listen((User? user) {
      if (user == null && ModalRoute.of(context)!.settings.name != '/auth') {
        Navigator.of(context).pushNamed('/auth');
      } else {
        SharedPreferences.getInstance().then((prefs) {
          if (!prefs.containsKey('farmer')) {
            print('fetching profile');
            fetchUserProfile(user!.email!);
          }
        });
        var _ = ModalRoute.of(context)!.settings.name != '/discover'
            ? Navigator.of(context).pushNamed('/discover')
            : null;
      }
    });
  }
}
