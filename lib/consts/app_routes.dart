import 'package:go_router/go_router.dart';
import 'package:smartbazar/views/sign_in/sign_in_screen.dart';

class AppRoutes {
  static GoRouter router = GoRouter(
    routes: [
      GoRoute(
        path: '/',
        name: SignInScreen.id,
        builder: (context, state) => SignInScreen(),
      )
    ],
  );
}
