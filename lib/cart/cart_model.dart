import '/auth/firebase_auth/auth_util.dart';
import '/backend/api_requests/api_calls.dart';
import '/backend/backend.dart';
import '/components/delete_prompt_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'dart:ui';
import '/flutter_flow/random_data_util.dart' as random_data;
import 'cart_widget.dart' show CartWidget;
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'package:webviewx_plus/webviewx_plus.dart';

class CartModel extends FlutterFlowModel<CartWidget> {
  ///  Local state fields for this page.

  double? collectionCharge = 500.0;

  double grandTotal = 0.0;

  List<CartRecord> cartItems = [];
  void addToCartItems(CartRecord item) => cartItems.add(item);
  void removeFromCartItems(CartRecord item) => cartItems.remove(item);
  void removeAtIndexFromCartItems(int index) => cartItems.removeAt(index);
  void insertAtIndexInCartItems(int index, CartRecord item) =>
      cartItems.insert(index, item);
  void updateCartItemsAtIndex(int index, Function(CartRecord) updateFn) =>
      cartItems[index] = updateFn(cartItems[index]);

  ///  State fields for stateful widgets in this page.

  // Stores action output result for [Backend Call - API (createPaymentOrder)] action in Button widget.
  ApiCallResponse? apiResultyyp;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {}
}
