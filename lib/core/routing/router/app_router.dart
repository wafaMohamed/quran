import 'package:go_router/go_router.dart';

import '../../../pages/auth/forget_password/forget_password_page.dart';
import '../../../pages/auth/login/login_page.dart';
import '../../../pages/auth/sign_up/sign_up_page.dart';
import '../../../pages/auth/verfication/verfication_page.dart';
import '../../../pages/home/choose_your_favourite_sheikh.dart';
import '../../../pages/home/choose_your_favourite_surah.dart';
import '../../../pages/home/home_page.dart';
import '../routes/app_routes_name.dart';

abstract class AppRouter {
  static final router = GoRouter(
    initialLocation: "/",
    routes: [
      // first screen
      GoRoute(
        path: "/",
        builder: (context, state) => const LoginPage(),
        name: "/",
      ),
      GoRoute(
        path: AppRoutesNames.signUpCoverPageRoute,
        builder: (context, state) => const SignUpCoverPage(),
        name: AppRoutesNames.signUpCoverPageRoute,
      ),
      GoRoute(
        path: AppRoutesNames.homePageRoute,
        builder: (context, state) => const HomePage(),
        name: AppRoutesNames.homePageRoute,
      ),
      GoRoute(
        path: AppRoutesNames.verificationPageRoute,
        builder: (context, state) => const VerificationPage(),
        name: AppRoutesNames.verificationPageRoute,
      ),
      GoRoute(
        path: AppRoutesNames.forgetPasswordPageRoute,
        builder: (context, state) => const ForgetPasswordPage(),
        name: AppRoutesNames.forgetPasswordPageRoute,
      ),
      GoRoute(
        path: AppRoutesNames.chooseYourFavouriteSheikhRoute,
        builder: (context, state) => const ChooseYourFavouriteSheikh(),
        name: AppRoutesNames.chooseYourFavouriteSheikhRoute,
      ),
      GoRoute(
        path: AppRoutesNames.chooseYourFavouriteSurahRoute,
        builder: (context, state) => const ChooseYourFavouriteSurah(),
        name: AppRoutesNames.chooseYourFavouriteSurahRoute,
      ),
    ],
  );
}
