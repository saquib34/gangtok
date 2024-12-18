import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/components/selectwishlist_category_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'dart:ui';
import 'view_testdetails_widget.dart' show ViewTestdetailsWidget;
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'package:webviewx_plus/webviewx_plus.dart';

class ViewTestdetailsModel extends FlutterFlowModel<ViewTestdetailsWidget> {
  ///  State fields for stateful widgets in this page.

  // Stores action output result for [Backend Call - Create Document] action in Column widget.
  WishlistRecord? newWishlist;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {}
}
