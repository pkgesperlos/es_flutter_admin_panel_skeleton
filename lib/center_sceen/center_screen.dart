
import 'package:es_flutter_panel_skeleton/drawer/panelItems/panel_initial_page.dart';
import 'package:flutter/material.dart';


class CenterScreen extends StatefulWidget {
  static final GlobalKey<_CenterScreen> globalKey = GlobalKey();
  CenterScreen({Key? key,}) : super(key: globalKey);



  @override
  _CenterScreen createState() => _CenterScreen();
}


class _CenterScreen extends State<CenterScreen> {
//in this line you can initial the first page that it is the page relevent to the first drawer item
  Widget page=PanelInitialPage();

//function for change page by global key in drawer page
 changePage(currentPage){
   setState(() {
     page=currentPage;
   });
 }


  @override
  Widget build(BuildContext context) {
    return page;
  }




}
