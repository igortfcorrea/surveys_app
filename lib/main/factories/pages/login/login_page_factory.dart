import 'package:flutter/material.dart';
import 'package:surveys_app/main/factories/pages/login/login_presenter_factory.dart';

import '../../../../ui/pages/pages.dart';

Widget makeLoginPage() {
  return LoginPage(makeLoginPresenter());
}
