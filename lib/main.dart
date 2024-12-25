import 'package:flutter/material.dart';
import 'package:flutter_advanced_app/core/di/dependency_injection.dart';
import 'package:flutter_advanced_app/core/routing/app_router.dart';
import 'package:flutter_advanced_app/doc_app.dart';

void main() {
  setUpGetIt();
  runApp(DocApp(
    appRouter: AppRouter(),
  ));
}
