import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';

Future initFirebase() async {
  if (kIsWeb) {
    await Firebase.initializeApp(
        options: FirebaseOptions(
            apiKey: "AIzaSyCBCHv90NSfq3-lGWMk_T9eYfx11IwGGc0",
            authDomain: "mueblexpress-fa6f9.firebaseapp.com",
            projectId: "mueblexpress-fa6f9",
            storageBucket: "mueblexpress-fa6f9.firebasestorage.app",
            messagingSenderId: "1067554455895",
            appId: "1:1067554455895:web:064a7c1cddffbffb09fe12",
            measurementId: "G-199YVDG2DV"));
  } else {
    await Firebase.initializeApp();
  }
}
