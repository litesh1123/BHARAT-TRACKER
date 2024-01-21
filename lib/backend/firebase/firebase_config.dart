import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';

Future initFirebase() async {
  if (kIsWeb) {
    await Firebase.initializeApp(
        options: FirebaseOptions(
            apiKey: "AIzaSyAtkj0pdVUPWGiluRUBuArnJAh0U9OOV5o",
            authDomain: "bharat-tracker.firebaseapp.com",
            projectId: "bharat-tracker",
            storageBucket: "bharat-tracker.appspot.com",
            messagingSenderId: "649830357383",
            appId: "1:649830357383:web:fee69daac61ac0798fdb22"));
  } else {
    await Firebase.initializeApp();
  }
}
