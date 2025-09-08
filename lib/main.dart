import 'package:ch_kids/app/models/child_model.dart';
import 'package:ch_kids/app/models/parent_model.dart';
import 'package:ch_kids/app/models/service_model.dart';
import 'package:ch_kids/app/screens/splash_screen.dart';
import 'package:ch_kids/app/constants/colors.dart';
import 'package:ch_kids/app/utils/timestamp_adapter.dart';
import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:ch_kids/firebase_options.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hive_flutter/hive_flutter.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  await Hive.initFlutter();
  Hive.registerAdapter(ChildModelAdapter());
  Hive.registerAdapter(ParentModelAdapter());
  Hive.registerAdapter(ServiceModelAdapter());
  Hive.registerAdapter(TimestampAdapter());
  runApp(const ProviderScope(child: MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'CH Kids',
      theme: ThemeData(
        primaryColor: AppColors.primary,
        scaffoldBackgroundColor: Colors.white,
        textTheme: GoogleFonts.comicNeueTextTheme(
          Theme.of(context).textTheme,
        ),
        appBarTheme: const AppBarTheme(
          backgroundColor: AppColors.primary,
          elevation: 0,
          iconTheme: IconThemeData(color: Colors.white),
        ),
        buttonTheme: const ButtonThemeData(
          buttonColor: AppColors.primary,
          textTheme: ButtonTextTheme.primary,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.all(Radius.circular(16)),
          ),
        ),
      ),
      home: const SplashScreen(),
    );
  }
}
