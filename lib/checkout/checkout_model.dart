import '/auth/firebase_auth/auth_util.dart';
import '/backend/api_requests/api_calls.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'dart:ui';
import 'checkout_widget.dart' show CheckoutWidget;
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class CheckoutModel extends FlutterFlowModel<CheckoutWidget> {
  ///  Local state fields for this page.

  double? collectionCharge = 500.0;

  ///  State fields for stateful widgets in this page.

  // State field(s) for upiID widget.
  FocusNode? upiIDFocusNode;
  TextEditingController? upiIDTextController;
  String? Function(BuildContext, String?)? upiIDTextControllerValidator;
  // State field(s) for upiName widget.
  FocusNode? upiNameFocusNode;
  TextEditingController? upiNameTextController;
  String? Function(BuildContext, String?)? upiNameTextControllerValidator;
  // Stores action output result for [Backend Call - API (OrderPayment)] action in Text widget.
  ApiCallResponse? apiResult8gq;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    upiIDFocusNode?.dispose();
    upiIDTextController?.dispose();

    upiNameFocusNode?.dispose();
    upiNameTextController?.dispose();
  }
}
