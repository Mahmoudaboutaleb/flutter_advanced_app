import 'package:flutter/material.dart';
import 'package:flutter_advanced_app/core/di/dependency_injection.dart';
import 'package:flutter_advanced_app/core/routing/app_router.dart';
import 'package:flutter_advanced_app/doc_app.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  // To Fix the issue of the screen size in Flavor Mode
  await ScreenUtil.ensureScreenSize();
  setUpGetIt();
  runApp(DocApp(
    appRouter: AppRouter(),
  ));
}
