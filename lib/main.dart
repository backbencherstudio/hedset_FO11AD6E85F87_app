import 'package:flutter/material.dart';
import 'package:flutter_newprojct/core/theme/theme.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'core/route/route_config.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  // Initialize Hive
  // await Hive.initFlutter();
  // await Hive.openBox('draftBox');
  //
  // // Initialize Google Sheets API
  // //final googleSheetService = GoogleSheetService();
  // await googleSheetService.init();

  runApp(
    ProviderScope(
      child: MyApp(),
    ),
  );
}


class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(375, 812),
      minTextAdapt: true,
      splitScreenMode: true,
      builder: (context, child) {
        return MaterialApp.router(
          debugShowCheckedModeBanner: false,
          title: 'Attendance App',
          theme: AppTheme.darkTheme,
          routerConfig: RouteConfig.goRouter,
        );
      },
    );
  }
}