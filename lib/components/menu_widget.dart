import '../first_page/first_page_widget.dart';
import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class MenuWidget extends StatefulWidget {
  const MenuWidget({Key key}) : super(key: key);

  @override
  _MenuWidgetState createState() => _MenuWidgetState();
}

class _MenuWidgetState extends State<MenuWidget> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height * 1,
      decoration: BoxDecoration(
        color: Color(0xFFF4F4EE),
      ),
      child: Column(
        mainAxisSize: MainAxisSize.max,
        children: [
          Align(
            alignment: AlignmentDirectional(0.1, 1),
            child: InkWell(
              onTap: () async {
                await Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => FirstPageWidget(),
                  ),
                );
              },
              child: Container(
                width: MediaQuery.of(context).size.width,
                height: 60,
                decoration: BoxDecoration(
                  color: Color(0xFFEEEEEE),
                ),
                child: Align(
                  alignment: AlignmentDirectional(-0.05, -0.25),
                  child: Text(
                    'Home',
                    textAlign: TextAlign.center,
                    style: FlutterFlowTheme.title1.override(
                      fontFamily: 'Lustria',
                    ),
                  ),
                ),
              ),
            ),
          ),
          Align(
            alignment: AlignmentDirectional(0.1, 1),
            child: Container(
              width: MediaQuery.of(context).size.width,
              height: 60,
              decoration: BoxDecoration(
                color: Color(0xFFEEEEEE),
              ),
              child: Align(
                alignment: AlignmentDirectional(-0.05, -0.25),
                child: Text(
                  'Settings',
                  textAlign: TextAlign.center,
                  style: FlutterFlowTheme.title1.override(
                    fontFamily: 'Lustria',
                  ),
                ),
              ),
            ),
          ),
          Align(
            alignment: AlignmentDirectional(0.1, 1),
            child: Container(
              width: MediaQuery.of(context).size.width,
              height: 60,
              decoration: BoxDecoration(
                color: Color(0xFFEEEEEE),
              ),
              child: Align(
                alignment: AlignmentDirectional(-0.05, -0.25),
                child: Text(
                  'About us ',
                  textAlign: TextAlign.center,
                  style: FlutterFlowTheme.title1.override(
                    fontFamily: 'Lustria',
                  ),
                ),
              ),
            ),
          ),
          Align(
            alignment: AlignmentDirectional(0.1, 1),
            child: Container(
              width: MediaQuery.of(context).size.width,
              height: 60,
              decoration: BoxDecoration(
                color: Color(0xFFEEEEEE),
              ),
              child: Align(
                alignment: AlignmentDirectional(-0.05, -0.25),
                child: Text(
                  'Use Policy',
                  textAlign: TextAlign.center,
                  style: FlutterFlowTheme.title1.override(
                    fontFamily: 'Lustria',
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
