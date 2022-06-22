
import 'package:es_flutter_component/es_button/es_ordinary_button.dart';
import 'package:es_flutter_component/es_table/es_simple_table.dart';
import 'package:es_flutter_panel_skeleton/language_change_provider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:provider/provider.dart';

import 'es_login.dart';
import 'images/widget_tree_panel.dart';


void main() {
  // [
    // {
    //   "route": "/home",
    //   "subRoute"null
    // },
    // {
    //   "route": "/users",
    //   "subRoute"[
    //   {
    //     "route": "/add",
    //     "subRoute"null
    //   },
    // {
    // "route": "/delete",
    // "subRoute"null
    // },
    //   ]
    // }

  // ]


  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _MyApp();
  }
}

class _MyApp extends State<MyApp> {
  // const _MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider<LanguageChangeProvider>(
      create: (context) => LanguageChangeProvider(),
      child: Builder(
          builder: (context) =>
              MaterialApp(
                // locale: Locale("fa"),
                locale:
                Provider
                    .of<LanguageChangeProvider>(context, listen: true)
                    .currentLocale,
                debugShowCheckedModeBanner: false,
                title: 'Localizations Sample App',
                localizationsDelegates: [
                  AppLocalizations.delegate, // Add this line
                  GlobalMaterialLocalizations.delegate,
                  GlobalWidgetsLocalizations.delegate,
                  GlobalCupertinoLocalizations.delegate
                ],
                supportedLocales: [
                  Locale('en', ''), // English, no country code
                  Locale('fa', ''), // Spanish, no country code
                ],

                initialRoute: '/',
                routes: {
                  '/': (context) => EsLogin(),
                  '/tree': (context) => WidgetTreePanel(),
                  // '/notification': (context) => PanelNotification(),
                  // '/chart': (context) => PanelChart(),
                  // '/responsiveTable': (context) => PanelEditableTable(),
                  // '/editableTable': (context) => PanelEditableTable(),
                  // '/simpleTable': (context) => PanelSimpleTable(),
                  // '/progressbar': (context) => PanelProgressBar(),
                  // '/slider': (context) => PanelSlider(),
                  // '/image': (context) => PanelImage(),
                  // '/form': (context) => PanelForm(),
                  // '/dialog': (context) => PanelDialogBox(),
                  // '/textSample': (context) => PanelTextSample(),
                  // '/buttonSample': (context) => PanelTextSample(),

                },
                // home:WidgetTreePanel()
              )),
    );
  }
}
// return ChangeNotifierProvider<LanguageChangeProvider>(
//   create: (context) => LanguageChangeProvider(),
//   child: Builder(builder: (context) {
//     return MaterialApp(
//         debugShowCheckedModeBanner: false,
//         locale: Provider
//             .of<LanguageChangeProvider>(context, listen: true)
//             .currentLocale,
//         title: 'Localizations Sample App',
//         localizationsDelegates: [
//           AppLocalizations.delegate, // Add this line
//           GlobalMaterialLocalizations.delegate,
//           GlobalWidgetsLocalizations.delegate,
//           GlobalCupertinoLocalizations.delegate
//         ],
//         supportedLocales: [
//           Locale('en', ''), // English, no country code
//           Locale('fa', ''), // Spanish, no country code
//         ],
//         // initialRoute: '/',
//         // routes: {
//         // '/': (context) => EsSimpleTable(),
//         // },
//         home: Scaffold(
//             // resizeToAvoidBottomInset: false,
//             body: WidgetTreePanel()
//         )
//     );
//   }),
// );


