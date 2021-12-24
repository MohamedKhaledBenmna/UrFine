import '../first_page/first_page_widget.dart';
import '../flutter_flow/flutter_flow_drop_down.dart';
import '../flutter_flow/flutter_flow_radio_button.dart';
import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import '../flutter_flow/flutter_flow_widgets.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class NewreminderWidget extends StatefulWidget {
  const NewreminderWidget({
    Key key,
    this.newReminder,
  }) : super(key: key);

  final DocumentReference newReminder;

  @override
  _NewreminderWidgetState createState() => _NewreminderWidgetState();
}

class _NewreminderWidgetState extends State<NewreminderWidget> {
  String dropDownValue;
  String radioButtonValue;
  TextEditingController textController1;
  TextEditingController textController2;
  TextEditingController textController3;
  TextEditingController textController4;
  TextEditingController textController5;
  final formKey = GlobalKey<FormState>();

  @override
  void initState() {
    super.initState();
    textController1 = TextEditingController();
    textController2 = TextEditingController();
    textController3 = TextEditingController();
    textController4 = TextEditingController();
    textController5 = TextEditingController();
  }

  @override
  Widget build(BuildContext context) {
    return Form(
      key: formKey,
      child: Align(
        alignment: AlignmentDirectional(-0.05, -0.85),
        child: Container(
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
                    hintText: 'Name of Treatement',
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
                    contentPadding: EdgeInsetsDirectional.fromSTEB(20, 0, 0, 0),
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
                    hintText: 'Duration of Tratement',
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
                    contentPadding: EdgeInsetsDirectional.fromSTEB(20, 0, 0, 0),
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
                padding: EdgeInsetsDirectional.fromSTEB(0, 10, 0, 0),
                child: FlutterFlowRadioButton(
                  options: [' 1 Day ', '1 Week ', '1 Month', 'Other'],
                  onChanged: (value) {
                    setState(() => radioButtonValue = value);
                  },
                  optionHeight: 25,
                  textStyle: FlutterFlowTheme.bodyText1.override(
                    fontFamily: 'Poppins',
                    color: Colors.black,
                  ),
                  selectedTextStyle: FlutterFlowTheme.bodyText1.override(
                    fontFamily: 'Lustria',
                    color: Colors.black,
                  ),
                  buttonPosition: RadioButtonPosition.left,
                  direction: Axis.vertical,
                  radioButtonColor: Color(0xFFA6A6A6),
                  inactiveRadioButtonColor: Color(0x8A000000),
                  toggleable: false,
                  horizontalAlignment: WrapAlignment.start,
                  verticalAlignment: WrapCrossAlignment.start,
                ),
              ),
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(0, 20, 0, 0),
                child: TextFormField(
                  controller: textController3,
                  obscureText: false,
                  decoration: InputDecoration(
                    hintText: 'Treatement Time 1 : ',
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
                    contentPadding: EdgeInsetsDirectional.fromSTEB(20, 0, 0, 0),
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
                  controller: textController4,
                  obscureText: false,
                  decoration: InputDecoration(
                    hintText: 'Treatement Time 2 : ',
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
                    contentPadding: EdgeInsetsDirectional.fromSTEB(20, 0, 0, 0),
                  ),
                  style: FlutterFlowTheme.bodyText1.override(
                    fontFamily: 'Lustria',
                    color: Color(0xFFA6A6A6),
                    fontSize: 25,
                  ),
                  validator: (val) {
                    if (val.isEmpty) {
                      return 'This field is required !';
                    }

                    return null;
                  },
                ),
              ),
              TextFormField(
                controller: textController5,
                obscureText: false,
                decoration: InputDecoration(
                  hintText: 'Remind me before : ',
                  hintStyle: FlutterFlowTheme.bodyText1.override(
                    fontFamily: 'Lustria',
                    color: Color(0xFFA6A6A6),
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
                  contentPadding: EdgeInsetsDirectional.fromSTEB(20, 0, 0, 0),
                ),
                style: FlutterFlowTheme.bodyText1.override(
                  fontFamily: 'Lustria',
                  color: Color(0xFFA6A6A6),
                ),
                validator: (val) {
                  if (val.isEmpty) {
                    return 'This field is required !';
                  }

                  return null;
                },
              ),
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(100, 0, 0, 0),
                child: FlutterFlowDropDown(
                  options: [
                    '10 Min',
                    '15 Min ',
                    '20 Min',
                    '25 Min',
                    '30 Min',
                    '1 H',
                    '2 H'
                  ].toList(),
                  onChanged: (val) => setState(() => dropDownValue = val),
                  width: 110,
                  height: 30,
                  textStyle: FlutterFlowTheme.bodyText1.override(
                    fontFamily: 'Lustria',
                    color: Colors.black,
                  ),
                  fillColor: Colors.white,
                  elevation: 2,
                  borderColor: Colors.transparent,
                  borderWidth: 0,
                  borderRadius: 0,
                  margin: EdgeInsetsDirectional.fromSTEB(12, 4, 12, 4),
                  hidesUnderline: true,
                ),
              ),
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(0, 5, 0, 0),
                child: FFButtonWidget(
                  onPressed: () async {
                    await showDialog(
                      context: context,
                      builder: (alertDialogContext) {
                        return AlertDialog(
                          title: Text('Saved'),
                          content:
                              Text('You will be reminded of your treatement'),
                          actions: [
                            TextButton(
                              onPressed: () =>
                                  Navigator.pop(alertDialogContext),
                              child: Text('Cancel'),
                            ),
                            TextButton(
                              onPressed: () async {
                                Navigator.pop(alertDialogContext);
                                await Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => FirstPageWidget(),
                                  ),
                                );
                                ;
                              },
                              child: Text('Confirm'),
                            ),
                          ],
                        );
                      },
                    );
                  },
                  text: 'Save',
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
    );
  }
}
