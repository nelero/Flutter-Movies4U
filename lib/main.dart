import 'package:moviesfree4u/constant/string_const.dart';
import 'package:moviesfree4u/model/theme_model.dart';
import 'package:moviesfree4u/utils/widgethelper/widget_helper.dart';
import 'package:flutter/material.dart';
import 'package:moviesfree4u/constant/assets_const.dart';
import 'package:moviesfree4u/constant/color_const.dart';
import 'package:moviesfree4u/view/intro/intro_screen.dart';
import 'package:scoped_model/scoped_model.dart';

void main() {
  // SPManager.getThemeDark();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // SPManager.getThemeDark()
    return getView();
    // return
    //   ScopedModel(
    //   model: ThemeModel(),
    //   child: getView(),
    // );
  }

  Widget getView() {
    return
      // ScopedModelDescendant<ThemeModel>(
      //   builder: (context, _, model) =>
        MaterialApp(
              title: StringConst.APP_NAME,
              debugShowCheckedModeBanner: false,
              // darkTheme: ThemeData(brightness: Brightness.dark),
              theme: ThemeData(brightness: isDarkMode() ?Brightness.dark:Brightness.light,
              fontFamily: AssetsConst.ZILLASLAB_FONT,
                  accentColor: ColorConst.APP_COLOR,
                  // accentColorBrightness: Brightness.light,
                  primarySwatch: ColorConst.APP_COLOR,),
              // darkTheme: model.getTheme != null ? ThemeData(brightness: Brightness.dark):ThemeData(brightness: Brightness.light),
              // theme: ThemeData(
              //   brightness: Brightness.light,
              //   fontFamily: AssetsConst.ZILLASLAB_FONT,
              //   accentColor: ColorConst.APP_COLOR,
              //   accentColorBrightness: Brightness.light,
              //   primarySwatch: ColorConst.APP_COLOR,
              // ),
              home: IntroScreen(),
            // )
    );
  }
}
