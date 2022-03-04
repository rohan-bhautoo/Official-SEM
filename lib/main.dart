import 'package:flutter/material.dart';
import 'package:official_sem/screens/splash/splash_screen.dart';
import 'routes.dart';
import 'size_config.dart';
import 'theme.dart';

void main() {
  runApp(const OfficialSEM());
}

class OfficialSEM extends StatelessWidget {
  const OfficialSEM({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => FocusScope.of(context).requestFocus(FocusNode()),
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        supportedLocales: const [Locale('en', 'US')],
        title: 'Official SEM™',
        theme: theme(),
        routes: routes,
        home: const LandingPage(),
      ),
    );
  }
}

class LandingPage extends StatefulWidget {
  const LandingPage({Key? key}) : super(key: key);

  @override
  State<LandingPage> createState() => _LandingPageState();
}

class _LandingPageState extends State<LandingPage> {
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return const SplashScreen();
  }
}
