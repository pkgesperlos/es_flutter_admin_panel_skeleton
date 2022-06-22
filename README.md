#1-How to create multi language app(android/ios)
To use flutter_localizations, add the package as a dependency to your pubspec.yaml file:

#1-1:dependencies:
flutter:
  sdk: flutter 
flutter_localizations: # Add this line 
  sdk: flutter # Add this line

Next, run pub get packages, then import the flutter_localizations library and specify
localizationsDelegates and supportedLocales for MaterialApp:

#1-2:import 'package:flutter_localizations/flutter_localizations.dart';

return const MaterialApp(
title: 'Localizations Sample App',
localizationsDelegates: [
GlobalMaterialLocalizations.delegate,
GlobalWidgetsLocalizations.delegate, 
GlobalCupertinoLocalizations.delegate,
],
supportedLocales: [
Locale('en', ''), // English, no country code 
Locale('fa', ''), // persian, no country code
],
home: MyHomePage(),
);
Adding your own localized messages

Once the flutter_localizations package is added, use the following instructions to add localized text to your application.

#1-3:Add the intl package to the pubspec.yaml file:

dependencies:
flutter:
sdk: flutter
flutter_localizations:
sdk: flutter
intl: ^0.17.0 # Add this line

#1-4:Also, in the pubspec.yaml file, enable the generate flag. This is added to the section of 
#the pubspec that is specific to Flutter, and usually comes later in the pubspec file.
# The following section is specific to Flutter.
flutter:
generate: true # Add this line

#1-5:Creat  l10n.yaml with the following content:

arb-dir: lib/l10n
template-arb-file: app_en.arb
output-localization-file: app_localizations.dart

This file configures the localization tool; 
in this example, the input files are located in ${FLUTTER_PROJECT}/lib/l10n,
the app_en.arb file provides the template, and the generated localizations are placed in the app_localizations.dart file.

#1-6:In ${FLUTTER_PROJECT}/lib/l10n(in l10n), add the app_en.arb template file. For example:

{
"helloWorld": "Hello World!",
"@helloWorld": {
"description": "The conventional newborn programmer greeting"
}
"file": "file",
},
#1-7:Next, add an app_fa.arb file in the same directory for persian translation of the same
#message(in exactly this format):

{
"helloWorld": "سلام دنیا!",
"file": "پوشه",
}
and you shold add all of  the word in your app in this two files.
#2-How to change the Language Globally 
#2-1:by adding the file language_change_provider.dart in lib
#2-2:wrap the MaterialApp in main.dart to builder 
#2-3:install provider and import 'package:provider/provider.dart';
#then wrap ChangeNotifierProvider<LanguageChangeProvider> as below
return ChangeNotifierProvider<LanguageChangeProvider>(
create: (context) => LanguageChangeProvider(),
child: Builder(
builder: (context) => MaterialApp(


#2-4:locale:Provider.of<LanguageChangeProvider>(context, listen: true).currentLocale,//change occurs in this line
debugShowCheckedModeBanner: false,...

#2-5you can use this dropdown button get the language from user in your appbar or login or anywhere.
EsDropDownButton(
            items: ["English", "Persian"],
            onTapItems: [
              () {
                context.read<LanguageChangeProvider>().changLocale("en");
              },
              () {
                context.read<LanguageChangeProvider>().changLocale("fa");
              }
            ],
          ),


#3-How to responsive 
First by dividing different kinds of devices as their sizes in  lib/images/Responsive_layout.dart
Then by dividing the pages into three section :
1-lib/appbar/app_bar_widget.dart,//control icons and avatar by ResponsiveLayout().
2-lib/drawer/drawer_page.dart,//control showing as part of screen in Computer case and as drawer 
in other case by ResponsiveLayout().
and 
3-lib/drawer/center_screen.dart// control showing the content column by flutter bootstrap.

#4-Responsive drawer in computer size with accordion 
It was not able to use FlutterRailSlider because of (accordion items) so,
a global key is created in (lib/center_screen/center_screen.dart) and it called by current state in 
(lib/drawer/drawer_page.dart) by changePage() function to change pages.
as Example:.globalKey.currentState ?.changePage(_buttonNames[index][0].page) in drawer.

#5-How to add pages in drawer
We have an array like this List=[buttonsInfo,[string,buttonsInfo,buttonsInfo]]=[A,B]
If we have an item with accordion items(with page context):
we should set pages in B (String is title of page and buttonInfo is a function with properties of page.)
else should set pages in A (buttonInfo is a function with properties of page.))

#6-How to initial first page in center
in lib/center_page.dart=>line21://in this line you can initial the first page
that it is the page relevant to the first drawer item


#7-How to change font and theme
We divided all font,sizes, and colors into two section :

1-es_flutter_components/Constants.dart//include the  font,sizes, and colors parameters of Components.
2-es_flutter_CRM/PanelConstants.dart//include the  sizes, and colors parameters of Panel.



