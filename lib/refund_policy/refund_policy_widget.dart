import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'dart:ui';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'refund_policy_model.dart';
export 'refund_policy_model.dart';

class RefundPolicyWidget extends StatefulWidget {
  const RefundPolicyWidget({super.key});

  @override
  State<RefundPolicyWidget> createState() => _RefundPolicyWidgetState();
}

class _RefundPolicyWidgetState extends State<RefundPolicyWidget> {
  late RefundPolicyModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => RefundPolicyModel());

    WidgetsBinding.instance.addPostFrameCallback((_) => safeSetState(() {}));
  }

  @override
  void dispose() {
    _model.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        FocusScope.of(context).unfocus();
        FocusManager.instance.primaryFocus?.unfocus();
      },
      child: Scaffold(
        key: scaffoldKey,
        backgroundColor: FlutterFlowTheme.of(context).secondaryBackground,
        body: SafeArea(
          top: true,
          child: Padding(
            padding: EdgeInsetsDirectional.fromSTEB(24.0, 24.0, 24.0, 0.0),
            child: SingleChildScrollView(
              child: Column(
                mainAxisSize: MainAxisSize.min,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Padding(
                    padding:
                        EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 12.0),
                    child: Row(
                      mainAxisSize: MainAxisSize.max,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        InkWell(
                          splashColor: Colors.transparent,
                          focusColor: Colors.transparent,
                          hoverColor: Colors.transparent,
                          highlightColor: Colors.transparent,
                          onTap: () async {
                            context.pushNamed(
                              'home',
                              extra: <String, dynamic>{
                                kTransitionInfoKey: TransitionInfo(
                                  hasTransition: true,
                                  transitionType: PageTransitionType.fade,
                                  duration: Duration(milliseconds: 0),
                                ),
                              },
                            );
                          },
                          child: FaIcon(
                            FontAwesomeIcons.chevronCircleLeft,
                            color: Color(0xFFF4F4F4),
                            size: 40.0,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding:
                        EdgeInsetsDirectional.fromSTEB(0.0, 12.0, 0.0, 0.0),
                    child: Row(
                      mainAxisSize: MainAxisSize.max,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          'Refund Policy',
                          style:
                              FlutterFlowTheme.of(context).bodyMedium.override(
                                    fontFamily: 'Questrial',
                                    color: Color(0xFF132450),
                                    fontSize: 20.0,
                                    letterSpacing: 0.0,
                                    fontWeight: FontWeight.bold,
                                  ),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding:
                        EdgeInsetsDirectional.fromSTEB(0.0, 24.0, 0.0, 0.0),
                    child: Row(
                      mainAxisSize: MainAxisSize.max,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Flexible(
                          child: RichText(
                            textScaler: MediaQuery.of(context).textScaler,
                            text: TextSpan(
                              children: [
                                TextSpan(
                                  text:
                                      'Effective Date: October 2024\n\nAt **Swasthya**, we are committed to providing high-quality online blood collection and sample testing services to ensure your health and well-being. However, we understand that there may be situations requiring refunds. This Refund Policy outlines the terms and conditions under which refunds will be processed.  \n\n---\n\n1. Eligibility for Refund:  \nYou may be eligible for a refund under the following circumstances:  \n- Service Not Rendered: \nIf the blood collection was not completed due to reasons attributable to Swasthya (e.g., service cancellation by Swasthya).  \n- Sample Testing Errors: \nIf there are proven errors in the sample collection or testing process resulting from negligence by Swasthya.  \n- Service Cancellation by Customer:\nIf you cancel the service at least 24 hours before the scheduled collection time.  \n\n---\n\n2. Non-Refundable Cases:  \nRefunds will not be provided under the following circumstances:  \n- If the customer provides incorrect or incomplete information during booking.  \n- If the sample collection fails due to customer-related issues (e.g., unavailability at the scheduled time).  \n- Delays or issues caused by force majeure events (e.g., natural disasters, strikes, etc.).  \n\n---\n\n3. Refund Process:\nTo request a refund, follow these steps:  \n1. Submit a Request:\nContact our customer support team via email at swasthyagangtok@gmail.com or call us at +91 8653670638.  \n2. Provide Details:\nInclude your name, booking ID, and the reason for requesting a refund.  \n3. Verification:\nOur team will verify your request and may ask for additional details if necessary.  \n4. Approval: \nOnce approved, the refund will be processed as per the timeline mentioned below.  \n\n---\n\n4. Refund Timeline:\n- Approved refunds will be processed within **7-10 business days** from the date of approval.  \n- Refunds will be credited to the original payment method used during the booking.  \n\n---\n\n5. Cancellation and Rescheduling:\n- Cancellation: \nTo cancel your booking, please notify us at least **24 hours** in advance.  \n- Rescheduling: \nRescheduling is allowed once without any charges, provided the request is made at least **12 hours** prior to the scheduled collection.  \n\n---\n\n6. Contact Information:\nIf you have any questions or concerns regarding our Refund Policy, please feel free to contact us: \nDevelopment Area, Gangtok, East Sikkim,\n+91 8653670638  \nswasthyagangtok@gmail.com\n \n\n---\n\n### **7. Changes to the Refund Policy**  \nSwasthya reserves the right to modify this Refund Policy at any time. Any changes will be communicated through our official website or via email.  \n\n---\n\nBy using our services, you agree to the terms of this Refund Policy. Thank you for choosing Swasthya for your health testing needs!  ',
                                  style: FlutterFlowTheme.of(context)
                                      .bodyMedium
                                      .override(
                                        fontFamily: 'Questrial',
                                        color: Color(0x80272727),
                                        fontSize: 18.0,
                                        letterSpacing: 0.0,
                                        fontWeight: FontWeight.w500,
                                      ),
                                )
                              ],
                              style: FlutterFlowTheme.of(context)
                                  .bodyMedium
                                  .override(
                                    fontFamily: 'Inter',
                                    letterSpacing: 0.0,
                                  ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
