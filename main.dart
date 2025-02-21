import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:google/sub_selection_page.dart';
//import 'package:google/test.dart';
import 'package:http/http.dart' as http;

import 'home_page.dart';
import 'login_page.dart';
import 'merch.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    // name: "test1",
    options:const FirebaseOptions(

      // for merchendise
        apiKey: "AIzaSyDOYTB5MCy_VKeDlzcS8DThcMk7eYfSl6I",
        appId: "1:39721889660:android:2e9987b4afa2e1c45f7ef9",
        messagingSenderId:"39721889660",
        projectId: "ecommerce-eb54d",
        storageBucket: 'ecommerce-eb54d.appspot.com'),


      



  );  // Initialize Firebase
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Google',
      debugShowCheckedModeBanner: false,
      // initialRoute: '/',
      // routes: {
      //   '/': (context) => LoginPage(),
      //   '/home': (context) => HomePage(),
      //   '/subject_selection':(context)=> SubjectSelectionPage(),
      // },
      home:merch(),
    );
  }
}
