import 'package:BYCDelicacy/core/router/router.dart';
import 'package:BYCDelicacy/core/viewmodel/favor_view_model.dart';
import 'package:BYCDelicacy/core/viewmodel/meal_view_model.dart';
import 'package:BYCDelicacy/ui/shared/app_theme.dart';
import 'package:BYCDelicacy/ui/shared/size_fit.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(MultiProvider(
    providers: [
      ChangeNotifierProvider(create: (context) => BYCMealViewModel()),
      ChangeNotifierProvider(create: (context) => BYCFavorViewModel())
    ],
    child: MyApp(),
  ));
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    BYCSizeFit.initialize();
    return MaterialApp(
      title: "美美搭",
      theme: BYCAppTheme.norTheme,
      initialRoute: BYCRouter.initialRoute,
      routes: BYCRouter.routes,
      onGenerateRoute: BYCRouter.generateRoute,
      onUnknownRoute: BYCRouter.unknownRoute,
    );
  }
}

class SampleApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Sample App',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: SampleAppPage(),
    );
  }
}

class SampleAppPage extends StatefulWidget {
  SampleAppPage({Key key}) : super(key: key);

  @override
  _SampleAppPageState createState() => _SampleAppPageState();
}

class _SampleAppPageState extends State<SampleAppPage> {
  String _errorText;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Sample App"),
      ),
      body: Center(
        child: TextField(
          onSubmitted: (String text) {
            setState(() {
              if (!isEmail(text)) {
                _errorText = 'Error: This is not an email';
              } else {
                _errorText = null;
              }
            });
          },
          decoration: InputDecoration(hintText: "This is a hint", errorText: _errorText),
        ),
      ),
    );
  }

  bool isEmail(String em) {
    String emailRegexp =
        r'^(([^<>()[\]\\.,;:\s@\"]+(\.[^<>()[\]\\.,;:\s@\"]+)*)|(\".+\"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$';

    RegExp regExp = RegExp(emailRegexp);

    return regExp.hasMatch(em);
  }
}

//void main() {
//  runApp(SampleApp());
//}
//
//class SampleApp extends StatelessWidget {
//  @override
//  Widget build(BuildContext context) {
//    return MaterialApp(
//      title: 'Sample App',
//      theme: ThemeData(
//        primarySwatch: Colors.blue,
//      ),
//      home: SampleAppPage(),
//    );
//  }
//}
//
////class SampleAppPage extends StatefulWidget {
////  SampleAppPage({Key key}) : super(key: key);
////
////  @override
////  _SampleAppPageState createState() => _SampleAppPageState();
////}
////
////class _SampleAppPageState extends State<SampleAppPage> {
////  List widgets = [];
////
////  @override
////  void initState() {
////    super.initState();
////    loadData();
////  }
////
////  showLoadingDialog() {
////    return widgets.length == 0;
////  }
////
////  getBody() {
////    if (showLoadingDialog()) {
////      return getProgressDialog();
////    } else {
////      return getListView();
////    }
////  }
////
////  getProgressDialog() {
////    return Center(child: CircularProgressIndicator());
////  }
////
////  @override
////  Widget build(BuildContext context) {
////    return Scaffold(
////        appBar: AppBar(
////          title: Text("Sample App"),
////        ),
////        body: getBody());
////  }
////
////  ListView getListView() => ListView.builder(
////      itemCount: widgets.length,
////      itemBuilder: (BuildContext context, int position) {
////        return getRow(position);
////      });
////
////  Widget getRow(int i) {
////    return Padding(padding: EdgeInsets.all(10.0), child: Text("Row ${widgets[i]["title"]}"));
////  }
////
////  loadData() async {
////    String dataURL = "https://jsonplaceholder.typicode.com/posts";
////    final response = await HttpRequest.requst(dataURL);
////    setState(() {
////      widgets = response;
////    });
////  }
////}