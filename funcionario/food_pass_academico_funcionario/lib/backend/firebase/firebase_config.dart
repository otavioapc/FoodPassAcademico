import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';

Future initFirebase() async {
  if (kIsWeb) {
    await Firebase.initializeApp(
        options: FirebaseOptions(
            apiKey: "AIzaSyA4XqHaSY4w89MhtghmZGAYp23JcIw9vJ0",
            authDomain: "foodpass-dd7c2.firebaseapp.com",
            projectId: "foodpass-dd7c2",
            storageBucket: "foodpass-dd7c2.firebasestorage.app",
            messagingSenderId: "1011348310736",
            appId: "1:1011348310736:web:e3bf5346c033139b79acd5"));
  } else {
    await Firebase.initializeApp();
  }
}
