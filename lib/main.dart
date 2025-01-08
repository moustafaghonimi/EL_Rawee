import 'package:elrawee/app/rawee_app.dart';
import 'package:elrawee/current_state_check.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:elrawee/Core/database/cache/cache_helper.dart';
import 'package:elrawee/Core/services/service_locator_get_it.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  currentStateCheck();
  setupServiceLocator();
  await getIt<CacheHelper>().init();
  runApp(const RaweeApp());
}
