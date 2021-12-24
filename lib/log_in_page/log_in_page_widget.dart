import '../auth/auth_util.dart';
import '../first_page/first_page_widget.dart';
import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import '../flutter_flow/flutter_flow_widgets.dart';
import '../home_p_age/home_p_age_widget.dart';
import '../sign_in/sign_in_widget.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';

class LogInPageWidget extends StatefulWidget {
  const LogInPageWidget({Key key}) : super(key: key);

  @override
  _LogInPageWidgetState createState() => _LogInPageWidgetState();
}

class _LogInPageWidgetState extends State<LogInPageWidget> {
  TextEditingController emailTextController;
  TextEditingController passwordTextController;
  bool passwordVisibility;
  final formKey = GlobalKey<FormState>();
  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    emailTextController = TextEditingController();
    passwordTextController = TextEditingController();
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
          child: Padding(
            padding: EdgeInsetsDirectional.fromSTEB(37, 0, 0, 0),
            child: Column(
              mainAxisSize: MainAxisSize.max,
              children: [
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(0, 50, 0, 50),
                  child: Container(
                    width: MediaQuery.of(context).size.width * 0.8,
                    height: MediaQuery.of(context).size.height * 0.7,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      boxShadow: [
                        BoxShadow(
                          color: Colors.white,
                        )
                      ],
                      shape: BoxShape.rectangle,
                    ),
                    child: Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(0, 0, 0, 50),
                      child: Column(
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          Padding(
                            padding:
                                EdgeInsetsDirectional.fromSTEB(0, 50, 0, 0),
                            child: TextFormField(
                              controller: emailTextController,
                              obscureText: false,
                              decoration: InputDecoration(
                                hintText: 'Username',
                                hintStyle: GoogleFonts.getFont(
                                  'Lustria',
                                  color: Color(0xFFA6A6A6),
                                  fontWeight: FontWeight.w500,
                                  fontSize: 20,
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
                                contentPadding: EdgeInsetsDirectional.fromSTEB(
                                    20, 20, 20, 20),
                              ),
                              style: GoogleFonts.getFont(
                                'Lustria',
                                color: Color(0xFFA6A6A6),
                                fontWeight: FontWeight.w500,
                                fontSize: 20,
                              ),
                              textAlign: TextAlign.start,
                              keyboardType: TextInputType.name,
                              validator: (val) {
                                if (val.isEmpty) {
                                  return 'Please enter a valid username';
                                }

                                return null;
                              },
                            ),
                          ),
                          Padding(
                            padding:
                                EdgeInsetsDirectional.fromSTEB(0, 10, 0, 0),
                            child: TextFormField(
                              controller: passwordTextController,
                              obscureText: !passwordVisibility,
                              decoration: InputDecoration(
                                hintText: 'Password',
                                hintStyle: FlutterFlowTheme.bodyText1.override(
                                  fontFamily: 'Lustria',
                                  color: Color(0xFFA6A6A6),
                                  fontSize: 20,
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
                                contentPadding: EdgeInsetsDirectional.fromSTEB(
                                    20, 20, 20, 0),
                                suffixIcon: InkWell(
                                  onTap: () => setState(
                                    () => passwordVisibility =
                                        !passwordVisibility,
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
                                fontSize: 20,
                              ),
                              validator: (val) {
                                if (val.isEmpty) {
                                  return 'Password is incorrect';
                                }
                                if (val.length < 8) {
                                  return 'Minimum required charecters 8';
                                }
                                return null;
                              },
                            ),
                          ),
                          Padding(
                            padding:
                                EdgeInsetsDirectional.fromSTEB(150, 0, 0, 0),
                            child: FFButtonWidget(
                              onPressed: () {
                                print('Button pressed ...');
                              },
                              text: 'Forgot password ?',
                              options: FFButtonOptions(
                                width: 130,
                                height: 40,
                                color: Color(0x003474E0),
                                textStyle: FlutterFlowTheme.subtitle2.override(
                                  fontFamily: 'Lustria',
                                  color: Color(0xFFA6A6A6),
                                  fontSize: 5,
                                  fontWeight: FontWeight.w600,
                                ),
                                borderSide: BorderSide(
                                  color: Colors.transparent,
                                  width: 1,
                                ),
                                borderRadius: 12,
                              ),
                            ),
                          ),
                          Padding(
                            padding:
                                EdgeInsetsDirectional.fromSTEB(0, 30, 0, 0),
                            child: FFButtonWidget(
                              onPressed: () async {
                                if (!formKey.currentState.validate()) {
                                  return;
                                }
                                await Navigator.pushAndRemoveUntil(
                                  context,
                                  PageTransition(
                                    type: PageTransitionType.bottomToTop,
                                    duration: Duration(milliseconds: 300),
                                    reverseDuration:
                                        Duration(milliseconds: 300),
                                    child: FirstPageWidget(),
                                  ),
                                  (r) => false,
                                );
                                if (currentUserEmailVerified) {
                                  final user = await signInWithEmail(
                                    context,
                                    emailTextController.text,
                                    passwordTextController.text,
                                  );
                                  if (user == null) {
                                    return;
                                  }
                                }
                              },
                              text: 'Log In',
                              options: FFButtonOptions(
                                width: 250,
                                height: 40,
                                color: Color(0xFFF4F4EE),
                                textStyle: FlutterFlowTheme.subtitle2.override(
                                  fontFamily: 'Lustria',
                                  color: Color(0xFFA6A6A6),
                                  fontSize: 20,
                                ),
                                borderSide: BorderSide(
                                  color: Color(0xFFC7D0D8),
                                  width: 1,
                                ),
                                borderRadius: 10,
                              ),
                            ),
                          ),
                          Padding(
                            padding:
                                EdgeInsetsDirectional.fromSTEB(0, 35, 0, 0),
                            child: InkWell(
                              onTap: () async {
                                await Navigator.push(
                                  context,
                                  PageTransition(
                                    type: PageTransitionType.fade,
                                    duration: Duration(milliseconds: 0),
                                    reverseDuration: Duration(milliseconds: 0),
                                    child: SignInWidget(),
                                  ),
                                );
                              },
                              child: Text(
                                'Create an account',
                                style: FlutterFlowTheme.bodyText1.override(
                                  fontFamily: 'Poppins',
                                  color: Color(0xFFA6A6A6),
                                  fontSize: 16,
                                ),
                              ),
                            ),
                          ),
                          Text(
                            'or Sign In with',
                            style: FlutterFlowTheme.bodyText1.override(
                              fontFamily: 'Poppins',
                              color: Color(0xFFA6A6A6),
                            ),
                          ),
                          Padding(
                            padding:
                                EdgeInsetsDirectional.fromSTEB(10, 30, 0, 10),
                            child: Row(
                              mainAxisSize: MainAxisSize.max,
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                InkWell(
                                  onTap: () async {
                                    final user =
                                        await signInWithFacebook(context);
                                    if (user == null) {
                                      return;
                                    }
                                    await Navigator.pushAndRemoveUntil(
                                      context,
                                      MaterialPageRoute(
                                        builder: (context) => SignInWidget(),
                                      ),
                                      (r) => false,
                                    );
                                  },
                                  child: Container(
                                    width: 50,
                                    height: 50,
                                    decoration: BoxDecoration(
                                      color: Color(0xFF3B5998),
                                      boxShadow: [
                                        BoxShadow(
                                          blurRadius: 5,
                                          color: Color(0x3314181B),
                                          offset: Offset(0, 2),
                                        )
                                      ],
                                      shape: BoxShape.circle,
                                    ),
                                    alignment: AlignmentDirectional(0, 0),
                                    child: FaIcon(
                                      FontAwesomeIcons.facebookF,
                                      color: Colors.white,
                                      size: 24,
                                    ),
                                  ),
                                ),
                                InkWell(
                                  onTap: () async {
                                    final user =
                                        await signInWithGoogle(context);
                                    if (user == null) {
                                      return;
                                    }
                                    await Navigator.pushAndRemoveUntil(
                                      context,
                                      MaterialPageRoute(
                                        builder: (context) => SignInWidget(),
                                      ),
                                      (r) => false,
                                    );
                                  },
                                  child: Container(
                                    width: 50,
                                    height: 50,
                                    decoration: BoxDecoration(
                                      color: Color(0x00090F13),
                                      image: DecorationImage(
                                        fit: BoxFit.fitWidth,
                                        image: Image.asset(
                                          'assets/images/1534129544.png',
                                        ).image,
                                      ),
                                      boxShadow: [
                                        BoxShadow(
                                          blurRadius: 5,
                                          color: Color(0x0014181B),
                                          offset: Offset(0, 2),
                                        )
                                      ],
                                      shape: BoxShape.circle,
                                    ),
                                    alignment: AlignmentDirectional(0, 0),
                                    child: FaIcon(
                                      FontAwesomeIcons.google,
                                      color: Colors.transparent,
                                      size: 24,
                                    ),
                                  ),
                                ),
                                Align(
                                  alignment: AlignmentDirectional(-0.05, -0.1),
                                  child: InkWell(
                                    onTap: () async {
                                      final user =
                                          await signInWithApple(context);
                                      if (user == null) {
                                        return;
                                      }
                                      await Navigator.pushAndRemoveUntil(
                                        context,
                                        MaterialPageRoute(
                                          builder: (context) => SignInWidget(),
                                        ),
                                        (r) => false,
                                      );
                                    },
                                    child: Container(
                                      width: 50,
                                      height: 50,
                                      decoration: BoxDecoration(
                                        color: Color(0xFF00ACEE),
                                        boxShadow: [
                                          BoxShadow(
                                            blurRadius: 5,
                                            color: Color(0x0014181B),
                                            offset: Offset(0, 2),
                                          )
                                        ],
                                        shape: BoxShape.circle,
                                      ),
                                      alignment: AlignmentDirectional(
                                          -0.050000000000000044,
                                          0.10000000000000009),
                                      child: FaIcon(
                                        FontAwesomeIcons.twitter,
                                        color: Colors.white,
                                        size: 24,
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                InkWell(
                  onTap: () async {
                    await Navigator.push(
                      context,
                      PageTransition(
                        type: PageTransitionType.bottomToTop,
                        duration: Duration(milliseconds: 300),
                        reverseDuration: Duration(milliseconds: 300),
                        child: HomePAgeWidget(),
                      ),
                    );
                  },
                  child: Image.asset(
                    'assets/images/2jy91_3.PNG',
                    width: 100,
                    height: 70,
                    fit: BoxFit.cover,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
