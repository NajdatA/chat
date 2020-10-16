import 'package:chat/features/chat/presentation/pages/chat_page.dart';
import 'package:chat/features/home/presentation/pages/home_page.dart';
import 'package:chat/features/splash/presentation/pages/splash_page.dart';
import 'package:flutter/material.dart';

class GenerateScreen {
  static Route<dynamic> onGenerate(RouteSettings value) {
    String name = value.name;
    final args = value.arguments;
    switch (name) {
      case NameScreen.SPLASH_SCREEN:
        return MaterialPageRoute(
          builder: (_) {
            return SplashPage();
          },
        );
        break;
      case NameScreen.HOME_SCREEN:
        return MaterialPageRoute(
          builder: (_) {
            return HomePage();
          },
        );
        break;
      case NameScreen.CHAT_SCREEN:
        return MaterialPageRoute(
          builder: (_) {
            return ChatPage();
          },
        );
        break;
      default:
        return _errorRoute();
    }
  }

  static Route<dynamic> _errorRoute() {
    return MaterialPageRoute(
      builder: (_) {
        return Scaffold(
          appBar: AppBar(
            title: Text('Error'),
          ),
          body: Center(
            child: Text('ERROR'),
          ),
        );
      },
    );
  }
}

class NameScreen {
  static const String SPLASH_SCREEN = "/";
  static const String CHAT_SCREEN = "/chat";
  static const String ABOUT_SCREEN = "/about";
  static const String HOME_SCREEN = "/home";
  static const String MY_INFO_SCREEN = "/myInfo";
  static const String BOOK_ADDRESS_SCREEN = "/bookAddress";
  static const String NOTIFICATIONS_SCREEN = "/notifications";
  static const String SETTINGS_SCREEN = "/settings";
  static const String SUPPORT_SCREEN = "/support";
  static const String WALLET_SCREEN = "/wallet";
  static const String VERIFICATION_SCREEN = "/verify";
  static const String REGISTER_SCREEN = "/register";
  static const String TRACK_DELIVERIES_SCREEN = "/track";
  static const String TERMS_SCREEN = "/terms";
}
