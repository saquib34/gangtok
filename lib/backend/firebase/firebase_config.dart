import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';

Future initFirebase() async {
  if (kIsWeb) {
    await Firebase.initializeApp(
        options: FirebaseOptions(
            apiKey: "AIzaSyCGpDw2nWaaj08MoPuqwwg3E8FrZI46nLs",
            authDomain: "swasthyanew.firebaseapp.com",
            projectId: "swasthyanew",
            storageBucket: "swasthyanew.firebasestorage.app",
            messagingSenderId: "352960769190",
            appId: "1:352960769190:web:bde775c54f9287e7679867"));
  } else {
    await Firebase.initializeApp();
  }
}
