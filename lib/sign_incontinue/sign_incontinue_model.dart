import '/auth/firebase_auth/auth_util.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'dart:ui';
import 'sign_incontinue_widget.dart' show SignIncontinueWidget;
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class SignIncontinueModel extends FlutterFlowModel<SignIncontinueWidget> {
  ///  State fields for stateful widgets in this page.

  // State field(s) for passwordSignIn widget.
  FocusNode? passwordSignInFocusNode;
  TextEditingController? passwordSignInTextController;
  late bool passwordSignInVisibility;
  String? Function(BuildContext, String?)?
      passwordSignInTextControllerValidator;

  @override
  void initState(BuildContext context) {
    passwordSignInVisibility = false;
  }

  @override
  void dispose() {
    passwordSignInFocusNode?.dispose();
    passwordSignInTextController?.dispose();
  }
}
