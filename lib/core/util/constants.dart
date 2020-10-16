import 'package:built_value/built_value.dart';
import 'package:chat/core/error/failures.dart';
import 'package:dio/dio.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SharedPreferencesKeys {
  static const API_TOKEN = 'api_token';

  static const NUMBER = 'number';

  static const IS_AGENT = 'is_agent';

  static const IS_CONFIRMED = 'is_confirmed';

  static const IS_VERIFIED = 'is_verified';

  static const IS_NOT_SOCIAL = 'is_not_social';

  static const NAME = 'name';

  static const MAX_NUM_POSTS = 'max_num_posts';

  static const NUM_POSTS = 'num_posts';

  static const IS_REMEMBER_ME = 'is_remember_me';

  static const ID = 'id';

  static const IS_LOGGED_IN = 'is_logged_in';

  static const USER_NAME = 'name';
  static const EMAIL = 'email';

  static const USER_TOKEN = 'token';

  static const MY_ADDRESS = 'myAddress';
  static const MY_NUMBER = 'myNumber';
  static const MY_EMAIL = 'myEmail';

  static const LOCATION = 'locationSharing';
  static const NOTIFICATION = 'notification';
  static const CONTACT = 'contactSharing';
  static const COLOR = 'color';
  static const LANGUAGE = 'language';
}

class Endpoints {
  static const BASE_URL = 'http://api.rahaf-t.com/api/';
  static const GET_CONSULTATIONS = 'getAllPrivateConsultations';
  static const CHANGEPASSWORD = 'changePassword';
  static const CHANGENAME = 'user/update_name';
  static const CHANGENUMBER = 'user/number';
  static const CHANGEADDRESS = 'address';
  static const SEARCH = 'region/by_name';
  static const BALANCE = 'balance_user';
  static const COST = 'requests/cost';
  static const CONFIRM = 'request';
  static const VERIFY_CODE = 'verifyUser';
  static const RESEND = 'resendCode';
  static const SETTING = 'setting';

  static update(int id) => 'contact/$id';

  static trackDelivery(int page) => 'trackDelivery?page=$page';

  static notifications(int page) => 'notifications?page=$page';

  static cancelOrder(int id) => 'request/$id/user';

  static const IMAGE_URL = 'http://167.71.60.6/';
}

const SERVER_FAILURE_MESSAGE = 'Server Failure';
const CACHE_FAILURE_MESSAGE = 'Cache Failure';

class FullTypes {}

class FullTypesFunctions {}

final OPTION = Options(
  headers: {
    'Content-Type': 'application/json',
    'Accept': 'application/json',
  },
);

final BASE_OPTIONS = BaseOptions(
  headers: {
    'Content-Type': 'application/json',
    'Accept': 'application/json',
  },
);

class RequestBody {
  static FormData socialLogin({
    @required String name,
    @required String email,
    @required String socialToken,
    @required String fcmToken,
    @required String language,
  }) {
    return FormData.fromMap({
      'name': name,
      'email': email,
      'social_token': socialToken,
      'fcm_token': fcmToken,
      'lang': language,
    });
  }
}

class GetOptions {
  static Options options = Options();

  static Options getOptionsWithToken(String token, {String language = ''}) {
    if (token != null && token.isNotEmpty) {
      options.headers = {
        'Content-Type': 'application/json',
        'Accept': 'application/json',
        'Authorization': 'Bearer $token',
        'Accept-Language': language,
      };
    } else {
      options.headers = {
        'Content-Type': 'application/json',
        'Accept': 'application/json',
        'Accept-Language': language,
      };
    }
    return options;
  }
}

bool vertical = false;
bool horizontal = false;
bool container = false;

class ContainerInfo extends StatefulWidget {
  final double height;
  final double width;
  final Border border;
  final double borderRadius;
  final Color color;
  final Widget child;

  ContainerInfo({
    Key key,
    @nullable this.height,
    @required this.width,
    @required this.border,
    @nullable this.borderRadius,
    @required this.color,
    @required this.child,
  }) : super(key: key);

  @override
  _ContainerInfoState createState() => _ContainerInfoState();
}

class _ContainerInfoState extends State<ContainerInfo> {
  @override
  void initState() {
    setState(() {
      container = false;
    });
    WidgetsBinding.instance.addPersistentFrameCallback((timeStamp) {
      if (mounted)
        setState(() {
          container = true;
        });
    });
    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    if (widget.height != null && widget.borderRadius != null) {
      return AnimatedContainer(
        duration: Duration(milliseconds: 500),
        height: container ? widget.height : 0,
        width: widget.width,
//        onEnd: () {
//          setState(() {0
//            vertical = true;
//          });
//        },
        decoration: BoxDecoration(
            color: widget.color,
            border: widget.border,
            borderRadius: BorderRadius.circular(widget.borderRadius)),
        child: widget.child,
      );
    }

    if (widget.height != null && widget.borderRadius == null) {
      return AnimatedContainer(
        duration: Duration(milliseconds: 500),
        height: container ? widget.height : 0,
        width: widget.width,
        decoration: BoxDecoration(
          color: widget.color,
          border: widget.border,
        ),
//        onEnd: () {
//          setState(() {
//            vertical = true;
//          });
//        },
        child: widget.child,
      );
    }

    if (widget.height == null && widget.borderRadius != null) {
      return AnimatedContainer(
        duration: Duration(milliseconds: 500),
        width: widget.width,
        decoration: BoxDecoration(
            color: widget.color,
            border: widget.border,
            borderRadius: BorderRadius.circular(widget.borderRadius)),
//        onEnd: () {
//          setState(() {
//            vertical = true;
//          });
//        },
        child: widget.child,
      );
    }

    if (widget.height == null && widget.borderRadius == null) {
      return AnimatedContainer(
        duration: Duration(milliseconds: 500),
        width: widget.width,
        decoration: BoxDecoration(
            color: widget.color,
            border: widget.border,
            borderRadius: BorderRadius.circular(widget.borderRadius)),
//        onEnd: () {
//          setState(() {
//            vertical = true;
//          });
//        },
        child: widget.child,
      );
    }
  }
}

class VerticalLine extends StatefulWidget {
  @override
  _VerticalLineState createState() => _VerticalLineState();
}

class _VerticalLineState extends State<VerticalLine> {
  @override
  void initState() {
    setState(() {
      vertical = false;
    });
    WidgetsBinding.instance.addPersistentFrameCallback((timeStamp) {
      if (mounted)
        setState(() {
          vertical = true;
        });
    });
    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
      duration: Duration(milliseconds: 500),
      height: vertical ? 200 : 0,
//      onEnd: () {
//        setState(() {
//          horizontal = true;
//        });
//      },
      width: 3,
      color: Colors.white,
    );
  }
}

class HorizontalLine extends StatefulWidget {
  final double width;

  HorizontalLine(this.width);

  @override
  _HorizontalLineState createState() => _HorizontalLineState();
}

class _HorizontalLineState extends State<HorizontalLine> {
  @override
  void initState() {
    setState(() {
      horizontal = false;
    });
    WidgetsBinding.instance.addPersistentFrameCallback((timeStamp) {
      if (mounted)
        setState(() {
          horizontal = true;
        });
    });
    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
      duration: Duration(milliseconds: 500),
      height: 3,
      width: horizontal ? widget.width : 0,
      color: Colors.white,
    );
  }
}

class FailureToMessage {
  static String getMessage(Failure failure) {
    switch (failure.runtimeType) {
      case ServerFailure:
        return SERVER_FAILURE_MESSAGE;
      case CacheFailure:
        return CACHE_FAILURE_MESSAGE;
      default:
        return 'Unexpected Error';
    }
  }
}

class CustomColor {
  static const Color blue = Color.fromRGBO(39, 140, 183, 1);
  static const Color yellow = Color.fromRGBO(252, 175, 75, 1);
}
