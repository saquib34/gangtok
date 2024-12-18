import '/auth/firebase_auth/auth_util.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'dart:ui';
import 'forgot_pasword_widget.dart' show ForgotPaswordWidget;
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class ForgotPaswordModel extends FlutterFlowModel<ForgotPaswordWidget> {
  ///  State fields for stateful widgets in this page.

  // State field(s) for emailLink widget.
  FocusNode? emailLinkFocusNode;
  TextEditingController? emailLinkTextController;
  String? Function(BuildContext, String?)? emailLinkTextControllerValidator;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    emailLinkFocusNode?.dispose();
    emailLinkTextController?.dispose();
  }
}
