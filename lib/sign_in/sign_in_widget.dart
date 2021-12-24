import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import '../flutter_flow/flutter_flow_widgets.dart';
import '../home_p_age/home_p_age_widget.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class SignInWidget extends StatefulWidget {
  const SignInWidget({Key key}) : super(key: key);

  @override
  _SignInWidgetState createState() => _SignInWidgetState();
}

class _SignInWidgetState extends State<SignInWidget> {
  TextEditingController textController1;
  TextEditingController textController2;
  TextEditingController textController3;
  TextEditingController textController4;
  bool passwordVisibility;
  final formKey = GlobalKey<FormState>();
  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    textController1 = TextEditingController();
    textController2 = TextEditingController();
    textController3 = TextEditingController();
    textController4 = TextEditingController();
    passwordVisibility = false;
  }

  @override
  Widget build(BuildContext context) {
    return Form(
      key: formKey,
      child: Scaffold(
        key: scaffoldKey,
        backgroundColor: Color(0xFFF4F4EE),
        body: SafeArea(
          child: Column(
            mainAxisSize: MainAxisSize.max,
            children: [
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(37, 50, 0, 20),
                child: Container(
                  width: MediaQuery.of(context).size.width * 0.8,
                  height: MediaQuery.of(context).size.height * 0.7,
                  decoration: BoxDecoration(
                    color: Colors.white,
                  ),
                  child: Column(
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(0, 70, 0, 0),
                        child: TextFormField(
                          controller: textController1,
                          obscureText: false,
                          decoration: InputDecoration(
                            hintText: 'Name & Surname',
                            hintStyle: FlutterFlowTheme.bodyText1.override(
                              fontFamily: 'Lustria',
                              color: Color(0xFFA6A6A6),
                              fontSize: 25,
                            ),
                            enabledBorder: UnderlineInputBorder(
                              borderSide: BorderSide(
                                color: Color(0x00000000),
                                width: 1,
                              ),
                              borderRadius: const BorderRadius.only(
                                topLeft: Radius.circular(4.0),
                                topRight: Radius.circular(4.0),
                              ),
                            ),
                            focusedBorder: UnderlineInputBorder(
                              borderSide: BorderSide(
                                color: Color(0x00000000),
                                width: 1,
                              ),
                              borderRadius: const BorderRadius.only(
                                topLeft: Radius.circular(4.0),
                                topRight: Radius.circular(4.0),
                              ),
                            ),
                            contentPadding:
                                EdgeInsetsDirectional.fromSTEB(20, 0, 0, 0),
                          ),
                          style: FlutterFlowTheme.bodyText1.override(
                            fontFamily: 'Lustria',
                            color: Color(0xFFA6A6A6),
                            fontSize: 25,
                          ),
                          keyboardType: TextInputType.name,
                          validator: (val) {
                            if (val.isEmpty) {
                              return 'This field is required !';
                            }

                            return null;
                          },
                        ),
                      ),
                      Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(0, 20, 0, 0),
                        child: TextFormField(
                          controller: textController2,
                          obscureText: false,
                          decoration: InputDecoration(
                            hintText: 'Date of Birth',
                            hintStyle: FlutterFlowTheme.bodyText1.override(
                              fontFamily: 'Lustria',
                              color: Color(0xFFA6A6A6),
                              fontSize: 25,
                            ),
                            enabledBorder: UnderlineInputBorder(
                              borderSide: BorderSide(
                                color: Color(0x00000000),
                                width: 1,
                              ),
                              borderRadius: const BorderRadius.only(
                                topLeft: Radius.circular(4.0),
                                topRight: Radius.circular(4.0),
                              ),
                            ),
                            focusedBorder: UnderlineInputBorder(
                              borderSide: BorderSide(
                                color: Color(0x00000000),
                                width: 1,
                              ),
                              borderRadius: const BorderRadius.only(
                                topLeft: Radius.circular(4.0),
                                topRight: Radius.circular(4.0),
                              ),
                            ),
                            contentPadding:
                                EdgeInsetsDirectional.fromSTEB(20, 0, 0, 0),
                          ),
                          style: FlutterFlowTheme.bodyText1.override(
                            fontFamily: 'Lustria',
                            color: Color(0xFFA6A6A6),
                            fontSize: 25,
                          ),
                          keyboardType: TextInputType.datetime,
                          validator: (val) {
                            if (val.isEmpty) {
                              return 'This field is required !';
                            }

                            return null;
                          },
                        ),
                      ),
                      Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(0, 20, 0, 0),
                        child: TextFormField(
                          controller: textController3,
                          obscureText: false,
                          decoration: InputDecoration(
                            hintText: 'Email',
                            hintStyle: FlutterFlowTheme.bodyText1.override(
                              fontFamily: 'Lustria',
                              color: Color(0xFFA6A6A6),
                              fontSize: 25,
                            ),
                            enabledBorder: UnderlineInputBorder(
                              borderSide: BorderSide(
                                color: Color(0x00000000),
                                width: 1,
                              ),
                              borderRadius: const BorderRadius.only(
                                topLeft: Radius.circular(4.0),
                                topRight: Radius.circular(4.0),
                              ),
                            ),
                            focusedBorder: UnderlineInputBorder(
                              borderSide: BorderSide(
                                color: Color(0x00000000),
                                width: 1,
                              ),
                              borderRadius: const BorderRadius.only(
                                topLeft: Radius.circular(4.0),
                                topRight: Radius.circular(4.0),
                              ),
                            ),
                            contentPadding:
                                EdgeInsetsDirectional.fromSTEB(20, 0, 0, 0),
                          ),
                          style: FlutterFlowTheme.bodyText1.override(
                            fontFamily: 'Lustria',
                            color: Color(0xFFA6A6A6),
                            fontSize: 25,
                          ),
                          keyboardType: TextInputType.emailAddress,
                          validator: (val) {
                            if (val.isEmpty) {
                              return 'This field is required !';
                            }

                            return null;
                          },
                        ),
                      ),
                      Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(0, 20, 0, 0),
                        child: TextFormField(
                          controller: textController4,
                          obscureText: !passwordVisibility,
                          decoration: InputDecoration(
                            hintText: 'Password',
                            hintStyle: FlutterFlowTheme.bodyText1.override(
                              fontFamily: 'Lustria',
                              color: Color(0xFFA6A6A6),
                              fontSize: 25,
                            ),
                            enabledBorder: UnderlineInputBorder(
                              borderSide: BorderSide(
                                color: Color(0x00000000),
                                width: 1,
                              ),
                              borderRadius: const BorderRadius.only(
                                topLeft: Radius.circular(4.0),
                                topRight: Radius.circular(4.0),
                              ),
                            ),
                            focusedBorder: UnderlineInputBorder(
                              borderSide: BorderSide(
                                color: Color(0x00000000),
                                width: 1,
                              ),
                              borderRadius: const BorderRadius.only(
                                topLeft: Radius.circular(4.0),
                                topRight: Radius.circular(4.0),
                              ),
                            ),
                            contentPadding:
                                EdgeInsetsDirectional.fromSTEB(20, 0, 0, 0),
                            suffixIcon: InkWell(
                              onTap: () => setState(
                                () => passwordVisibility = !passwordVisibility,
                              ),
                              child: Icon(
                                passwordVisibility
                                    ? Icons.visibility_outlined
                                    : Icons.visibility_off_outlined,
                                color: Color(0xFF757575),
                                size: 22,
                              ),
                            ),
                          ),
                          style: FlutterFlowTheme.bodyText1.override(
                            fontFamily: 'Lustria',
                            color: Color(0xFFA6A6A6),
                            fontSize: 25,
                          ),
                          keyboardType: TextInputType.visiblePassword,
                          validator: (val) {
                            if (val.isEmpty) {
                              return 'This field is required !';
                            }

                            return null;
                          },
                        ),
                      ),
                      Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(0, 50, 0, 0),
                        child: FFButtonWidget(
                          onPressed: () {
                            print('Button pressed ...');
                          },
                          text: 'Create account',
                          options: FFButtonOptions(
                            width: 250,
                            height: 40,
                            color: Color(0xFFF4F4EE),
                            textStyle: FlutterFlowTheme.subtitle2.override(
                              fontFamily: 'Poppins',
                              color: Color(0xFFA6A6A6),
                            ),
                            borderSide: BorderSide(
                              color: Color(0xFFC7D0D8),
                              width: 1,
                            ),
                            borderRadius: 10,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(37, 0, 0, 0),
                child: InkWell(
                  onTap: () async {
                    await Navigator.push(
                      context,
                      PageTransition(
                        type: PageTransitionType.bottomToTop,
                        duration: Duration(milliseconds: 50),
                        reverseDuration: Duration(milliseconds: 50),
                        child: HomePAgeWidget(),
                      ),
                    );
                  },
                  child: Image.asset(
                    'assets/images/2jy91_3.PNG',
                    width: 100,
                    height: 100,
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
