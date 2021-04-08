import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:vet_flutter/constants.dart';
import 'package:vet_flutter/screens/auth/login_signup.dart';
import 'package:vet_flutter/screens/discover/discover.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // Create the initialization Future outside of `build`:
  final Future<FirebaseApp> _initialization = Firebase.initializeApp();

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
      // Initialize FlutterFire:
      future: _initialization,
      builder: (context, snapshot) {
        // Check for errors
        if (snapshot.hasError) {
          return buildLoadingError();
        }

        // Once complete, show your application
        if (snapshot.connectionState == ConnectionState.done) {
          return buildMaterialApp();
        }

        // Otherwise, show something whilst waiting for initialization to complete
        return buildLoading();
      },
    );
  }

  MaterialApp buildMaterialApp() {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
          // This is the theme of your application.
          //
          // Try running your application with "flutter run". You'll see the
          // application has a blue toolbar. Then, without quitting the app, try
          // changing the primarySwatch below to Colors.green and then invoke
          // "hot reload" (press "r" in the console where you ran "flutter run",
          // or simply save your changes to "hot reload" in a Flutter IDE).
          // Notice that the counter didn't reset back to zero; the application
          // is not restarted.
          primaryColor: kColorPrimary,
          accentColor: kColorAccent,
          visualDensity: VisualDensity.adaptivePlatformDensity),
      initialRoute: '/auth',
      routes: {
        '/auth': (context) => LoginSignup(),
        'discover': (context) => Discover(null)
      },
    );
  }

  Widget buildLoading() {
    return MaterialApp(home: Center(child: Text('Loading...')));
  }

  Widget buildLoadingError() {
    return MaterialApp(
        home: Center(child: Text('Loading...'))); //TODO IMPLEMENT THIS
  }
}
