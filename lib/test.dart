
import 'package:es_flutter_panel_skeleton/es_login.dart';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';




class Test extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _Test();
  }

}

class _Test extends State<Test> {


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          IconButton(onPressed: () {
            changePage(Pages.page1);
          }, icon: Icon(Icons.add)),
          IconButton(onPressed: () {
            changePage(Pages.page2);
          }, icon: Icon(Icons.clear)),
        ],
      ),
      body: getPage(paging),
    );
  }

  Pages paging = Pages.page1;
  changePage(Pages page){

    setState(() {
      paging = page;
    });
  }


  getPage(Pages pages) {
    switch (pages) {
      case Pages.page1:
        return page1();
      case Pages.page2:
        return page2();
      default:
        return page1();
    }
  }

}
Widget page1() {
  return EsLogin();
}

Widget page2() {
  return EsLogin();
}

enum Pages {
  page1,
  page2
}



//   routes:[
// {
// "routeName":"داشبورد",
// "component":Page1()
// },{
// "routeName":"داشبورد",
// "component":Page1()
// },{
// "routeName":"داشبورد",
// "component":Page1(),
// "routes":[
// {
// "routeName":"داشبورد",
// "component":Page1()
// },
// {
// "routeName":"داشبورد",
// "component":Page1()
// },
// ]
// }
// ]
// }