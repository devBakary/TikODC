import 'package:flutter/material.dart';
import 'package:tikodc/Connexion.dart';
import 'package:tikodc/DateInscription.dart';
import 'package:tikodc/PassForget.dart';
import 'package:tikodc/Profil.dart';

import 'Accueil.dart';
import 'Home.dart';
import 'InscriptionDate.dart';
import 'InscriptionPass.dart';
import 'InscriptionTel.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'TIK ODC',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
      ),
      home: const Homepage(),
    );
  }
}

