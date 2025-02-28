
import 'package:cropix/authentication/gate.dart';
import 'package:cropix/firebase_options.dart';
//import 'package:cropix/themes/provider.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:cropix/firebase/provider.dart';

void main() async {

  //firebase setup
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);
  

  runApp(
    MultiProvider(
        providers: [
          //theme
          //ChangeNotifierProvider(create: (context) => ThemeProvider(),),
          //firebase
          ChangeNotifierProvider(create: (context) => FirebaseProvider(),),
         ],
        child: const MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});  
  
  
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'Cropix',
      debugShowCheckedModeBanner: false,
      home:  Gate(),
      //theme: Provider.of<ThemeProvider>(context).themeData,

    );
    }

}