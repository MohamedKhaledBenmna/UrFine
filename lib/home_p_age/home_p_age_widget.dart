import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import '../log_in_page/log_in_page_widget.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class HomePAgeWidget extends StatefulWidget {
  const HomePAgeWidget({Key key}) : super(key: key);

  @override
  _HomePAgeWidgetState createState() => _HomePAgeWidgetState();
}

class _HomePAgeWidgetState extends State<HomePAgeWidget> {
  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      backgroundColor: Color(0xFFF4F4EE),
      body: SafeArea(
        child: Column(
          mainAxisSize: MainAxisSize.max,
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(0),
              child: Image.asset(
                'assets/images/UrFine.png',
                height: MediaQuery.of(context).size.height * 0.75,
                fit: BoxFit.none,
              ),
            ),
            InkWell(
              onTap: () async {
                await Navigator.push(
                  context,
                  PageTransition(
                    type: PageTransitionType.topToBottom,
                    duration: Duration(milliseconds: 300),
                    reverseDuration: Duration(milliseconds: 300),
                    child: LogInPageWidget(),
                  ),
                );
              },
              child: Image.asset(
                'assets/images/trin2_1.PNG',
                width: 150,
                height: 100,
                fit: BoxFit.cover,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
