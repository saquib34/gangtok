import '/backend/backend.dart';
import '/components/sortby_discounts_widget.dart';
import '/components/sortby_price_widget.dart';
import '/components/sortby_widget.dart';
import '/flutter_flow/flutter_flow_autocomplete_options_list.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'dart:ui';
import 'alltestcategory_search_widget.dart' show AlltestcategorySearchWidget;
import 'package:easy_debounce/easy_debounce.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'package:text_search/text_search.dart';
import 'package:webviewx_plus/webviewx_plus.dart';

class AlltestcategorySearchModel
    extends FlutterFlowModel<AlltestcategorySearchWidget> {
  ///  State fields for stateful widgets in this page.

  // State field(s) for searchTermsource widget.
  final searchTermsourceKey = GlobalKey();
  FocusNode? searchTermsourceFocusNode;
  TextEditingController? searchTermsourceTextController;
  String? searchTermsourceSelectedOption;
  String? Function(BuildContext, String?)?
      searchTermsourceTextControllerValidator;
  List<InventoryRecord> simpleSearchResults = [];

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    searchTermsourceFocusNode?.dispose();
  }
}
