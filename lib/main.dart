import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:instagram1/login_screen.dart';
import 'package:instagram1/responsivefile.dart';
import 'package:instagram1/signup_screen.dart';
import 'package:instagram1/testing/lifecycle.dart';
import 'package:instagram1/testing/lifecycle/test/test.dart';
import 'package:instagram1/testing/riverpode.dart';
import 'package:instagram1/userscreen/UserPage.dart';
import 'package:instagram1/webScreenLayout.dart';

import 'Colors.dart';
import 'mobileScreenLayout.dart';
// final counterProvider =StateProvider((ref) => 0);
final streamProvider = StreamProvider((ref) => Stream.periodic(const Duration(seconds: 2),((computationCount)=>computationCount)));

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  if(kIsWeb){
    await Firebase.initializeApp(
      options:const FirebaseOptions(apiKey: "AIzaSyD_NsLBeB_UrJTJVutPga_4-IJob0SWx8I",
          appId: "1:649138431236:web:02274d28206204d8719c51",
          messagingSenderId: "649138431236",
          storageBucket: "instagram-c68ee.appspot.com",
          projectId: "instagram-c68ee"),
    );
  }else{
    await Firebase.initializeApp();
  }

  runApp(ProviderScope(child: const MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'instagram clone',
      theme: ThemeData.dark().copyWith(
        scaffoldBackgroundColor: mobileBackgroundColor
      ),

      //
      home:Test(),
    );
  }
}
