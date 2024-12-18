import '/auth/firebase_auth/auth_util.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'dart:ui';
import 'sign_in_widget.dart' show SignInWidget;
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class SignInModel extends FlutterFlowModel<SignInWidget> {
  ///  State fields for stateful widgets in this page.

  // State field(s) for emailSignIn widget.
  FocusNode? emailSignInFocusNode;
  TextEditingController? emailSignInTextController;
  String? Function(BuildContext, String?)? emailSignInTextControllerValidator;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    emailSignInFocusNode?.dispose();
    emailSignInTextController?.dispose();
  }
}
