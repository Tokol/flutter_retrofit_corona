


import 'package:flutter/material.dart';
import 'package:flutter_app/provider/corona_summary_prov.dart';

import 'const/const.dart';

import 'package:flutter_app/networks/networks.dart';


void main()  async {

  return runApp(MyApp());}

class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {

    return MaterialApp(
      debugShowCheckedModeBanner: false,
    theme: ThemeData.dark().copyWith(
      primaryColor:kThemeColor,
      scaffoldBackgroundColor: kThemeColor,

    ),

    home: CoronaRetroFit(),

    );
  }
}


class CoronaRetroFit extends StatefulWidget {
  @override
  _CoronaRetroFitState createState() => _CoronaRetroFitState();
}

class _CoronaRetroFitState extends State<CoronaRetroFit> {

  @override
  void initState() {
    // TODO: implement initState
    coronaUpdate();
    super.initState();
  }

  void coronaUpdate() async {

    CoronaProvider coronaProvider = CoronaProvider();
    coronaProvider.updateCovid();

  }


  @override
  Widget build(BuildContext context) {
    return Container();
  }
}

class CornaProvider {
}
