import 'package:es_flutter_component/es_text/es_ordinary_text.dart';
import 'package:es_flutter_component/es_text/es_title.dart';
import 'package:flutter/material.dart';

class PanelInitialPage extends StatelessWidget {
  const PanelInitialPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(child: EsTitle(data: "initial page",),);
  }
}
