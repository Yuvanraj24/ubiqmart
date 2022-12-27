import 'package:country_picker/country_picker.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:ubiqmart_new/view/login.dart';

void main(){
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
        designSize: Size(360,800),
        minTextAdapt: true,
        splitScreenMode: true,
        builder: (context, child) {
        return const MaterialApp(
          debugShowCheckedModeBanner: true,
          supportedLocales: [
            Locale('en'),
            Locale('el'),
            Locale.fromSubtags(languageCode: 'zh', scriptCode: 'Hans'), // Generic Simplified Chinese 'zh_Hans'
            Locale.fromSubtags(languageCode: 'zh', scriptCode: 'Hant'), // Generic traditional Chinese 'zh_Hant'
          ],
          localizationsDelegates: [
            CountryLocalizations.delegate,
          ],
          home: Login(),
        );
      }
    );
  }
}
