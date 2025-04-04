import 'package:bui_trong_nghia_home_assignment/core/presentation/app_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

void main() async {
  await dotenv.load();
  runApp(
    const ProviderScope(child: AppWidget()),
  );
}
