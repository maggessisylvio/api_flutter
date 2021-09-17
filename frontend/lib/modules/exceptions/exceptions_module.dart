import 'dio_exceptions/dio_exceptions_bindings.dart';
import 'dio_exceptions/dio_exceptions_page.dart';
import 'exceptions_page.dart';
import 'http_exceptions/http_exceptions_page.dart';
import 'http_exceptions/http_exceptions_bindings.dart';
import 'get_connect_exceptions/get_connect_exceptions_page.dart';
import 'get_connect_exceptions/get_connect_exceptions_bindings.dart';
import 'package:get/get.dart';

// ignore: must_be_immutable
class ExceptionsModule extends GetPage {
  ExceptionsModule()
      : super(
          name: '/exceptions',
          page: () => const ExceptionsPage(),
          children: [
            GetPage(
              name: '/http',
              page: () => const HttpExceptionsPage(),
              binding: HttpExceptionsBindings(),
            ),
            GetPage(
              name: '/dio',
              page: () => const DioExceptionsPage(),
              binding: DioExceptionsBindings(),
            ),
            GetPage(
              name: '/getconnect',
              page: () => const GetConnectExceptionsPage(),
              binding: GetConnectExceptionsBindings(),
            )
          ],
        );
}
