import 'package:newdapoer/core.dart';
import 'package:newdapoer/debug.dart';
//import 'package:newdapoer/service/notification_service/notification_service.dart';
import 'package:flutter/material.dart';

void main() async {
  await initialize();

  Get.mainTheme.value = getDefaultTheme();

  //await NotificationService().initNotifications();
  //await NotificationService().getToken();

  runMainApp();
}

runMainApp() async {
  return runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder(
      valueListenable: Get.mainTheme,
      builder: (context, value, child) {
        return MaterialApp(
          title: 'Rocaste newdapoer',
          navigatorKey: Get.navigatorKey,
          debugShowCheckedModeBanner: false,
          theme: value,
          home: const UserdashboardView(),
          builder: (context, child) => debugView(
            context: context,
            child: child,
            visible: true,
          ),
        );
      },
    );
  }
}
