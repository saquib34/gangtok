import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'dart:ui';
import 'aboutinfo_widget.dart' show AboutinfoWidget;
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class AboutinfoModel extends FlutterFlowModel<AboutinfoWidget> {
  ///  Local state fields for this page.

  bool male = false;

  bool female = false;

  String? gender;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {}
}
