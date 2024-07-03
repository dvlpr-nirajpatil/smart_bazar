import 'package:go_router/go_router.dart';
import 'package:smartbazar/views/home/home.dart';
import 'package:smartbazar/views/sign_in/sign_in_screen.dart';

class AppRoutes {
  static GoRouter router = GoRouter(
    routes: [
      GoRoute(
        path: '/',
        name: SignInScreen.id,
        builder: (context, state) => SignInScreen(),
      ),
      GoRoute(
        path: '/home',
        name: Home.id,
        builder: (context, state) => Home(),
      )
    ],
  );
}
