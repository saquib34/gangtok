import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'dart:ui';
import 'setting_add_payment_widget.dart' show SettingAddPaymentWidget;
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class SettingAddPaymentModel extends FlutterFlowModel<SettingAddPaymentWidget> {
  ///  State fields for stateful widgets in this page.

  // State field(s) for cardNo widget.
  FocusNode? cardNoFocusNode;
  TextEditingController? cardNoTextController;
  String? Function(BuildContext, String?)? cardNoTextControllerValidator;
  // State field(s) for ccv widget.
  FocusNode? ccvFocusNode;
  TextEditingController? ccvTextController;
  String? Function(BuildContext, String?)? ccvTextControllerValidator;
  // State field(s) for exp widget.
  FocusNode? expFocusNode;
  TextEditingController? expTextController;
  String? Function(BuildContext, String?)? expTextControllerValidator;
  DateTime? datePicked;
  // State field(s) for cardholdername widget.
  FocusNode? cardholdernameFocusNode;
  TextEditingController? cardholdernameTextController;
  String? Function(BuildContext, String?)?
      cardholdernameTextControllerValidator;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    cardNoFocusNode?.dispose();
    cardNoTextController?.dispose();

    ccvFocusNode?.dispose();
    ccvTextController?.dispose();

    expFocusNode?.dispose();
    expTextController?.dispose();

    cardholdernameFocusNode?.dispose();
    cardholdernameTextController?.dispose();
  }
}
