import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';

Future initFirebase() async {
  if (kIsWeb) {
    await Firebase.initializeApp(
        options: FirebaseOptions(
            apiKey: "AIzaSyCYxhHLyUqGJsckE9gNBwNQd-LWvJ1oijk",
            authDomain: "cocina-bb06c.firebaseapp.com",
            projectId: "cocina-bb06c",
            storageBucket: "cocina-bb06c.firebasestorage.app",
            messagingSenderId: "970003340920",
            appId: "1:970003340920:web:bba28f1d8a8a7d3fe9978d",
            measurementId: "G-BYCM2QCRQ4"));
  } else {
    await Firebase.initializeApp();
  }
}
