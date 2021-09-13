import 'package:api_flutter/home/dio/dio_bindings.dart';
import 'package:api_flutter/home/dio/dio_page.dart';
import 'package:api_flutter/home/get_connect/get_connect_bindings.dart';
import 'package:api_flutter/home/get_connect/get_connect_page.dart';
import 'package:api_flutter/home/home_bindings.dart';
import 'package:api_flutter/home/home_page.dart';
import 'package:api_flutter/home/http/http_bindings.dart';
import 'package:api_flutter/home/http/http_page.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      getPages: [
        GetPage(
          name: '/',
          page: () => HomePage(),
          children: [
            GetPage(
              name: '/http',
              page: () => HttpPage(),
              binding: HttpBindings(),
            ),
            GetPage(
              name: '/getconnect',
              page: () => GetConnectPage(),
              binding: GetConnectBindings(),
            ),
            GetPage(
              name: '/dio',
              page: () => DioPage(),
              binding: DioBindings(),
            )
          ],
          binding: HomeBindings(),
        )
      ],
    );
  }
}
