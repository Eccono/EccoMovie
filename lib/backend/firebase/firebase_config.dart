import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';

Future initFirebase() async {
  if (kIsWeb) {
    await Firebase.initializeApp(
        options: FirebaseOptions(
            apiKey: "AIzaSyCvv02GHcNCwoEb-TXaJJHbPGBU2xBCTK4",
            authDomain: "eccovie-766e9.firebaseapp.com",
            projectId: "eccovie-766e9",
            storageBucket: "eccovie-766e9.appspot.com",
            messagingSenderId: "388667430010",
            appId: "1:388667430010:web:08f0043e9eef8119f5d7c3",
            measurementId: "G-W484NPZKGY"));
  } else {
    await Firebase.initializeApp();
  }
}
