import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'dart:ui';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'tn_c_model.dart';
export 'tn_c_model.dart';

class TnCWidget extends StatefulWidget {
  const TnCWidget({super.key});

  @override
  State<TnCWidget> createState() => _TnCWidgetState();
}

class _TnCWidgetState extends State<TnCWidget> {
  late TnCModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => TnCModel());

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
                        Flexible(
                          child: Text(
                            'Terms and Conditions',
                            textAlign: TextAlign.center,
                            style: FlutterFlowTheme.of(context)
                                .bodyMedium
                                .override(
                                  fontFamily: 'Questrial',
                                  color: Color(0xFF132450),
                                  fontSize: 20.0,
                                  letterSpacing: 0.0,
                                  fontWeight: FontWeight.bold,
                                ),
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
                                      'Welcome to **Swasthya**, an online blood collection and sample testing service based in the state of Sikkim, India. By accessing or using our services, you agree to abide by these Terms and Conditions. Please read them carefully.\n\n1. Definitions:\n- “Service”: Refers to blood sample collection, testing, and delivery of test reports provided by Swasthya.  \n- “User/Customer”: Refers to any individual availing Swasthya\'s services.  \n- “We/Us/Our”: Refers to Swasthya, its team, and authorized representatives.  \n\n---\n\n2. Eligibility:\n- Users must be 18 years or older to book or authorize blood sample collection.  \n- Minors require consent from a parent or guardian to use our services.  \n\n---\n\n3. Services Provided -\n1. **Sample Collection**:  \n   - Home collection of blood samples at user-specified addresses.  \n2. **Testing**:  \n   - Laboratory testing performed at certified facilities.  \n3. **Report Delivery**:  \n   - Digital test reports sent via email/website portal or delivered to the specified address.  \n\n---\n\n4. Booking and Payment:\n- Booking: Appointments can be scheduled through our website, mobile application, or customer service helpline.  \n- **Payment**:  \n  - Payments can be made online or through cash at the time of collection.  \n  - No refunds are allowed once services are rendered.  \n- **Cancellation**: Bookings can be canceled up to 12 hours before the scheduled appointment.  \n\n---\n\n5. User Obligations:\n- Provide accurate personal and medical information during registration and appointment booking.  \n- Ensure availability at the agreed address during the scheduled time for sample collection.  \n- Inform Swasthya of any special medical conditions (e.g., hemophilia) before sample collection.  \n\n---\n\n6. Our Responsibilities:\n- To ensure proper hygiene, safety, and accuracy during sample collection and testing.  \n- Deliver reports promptly within the agreed time, barring unforeseen circumstances.  \n- Maintain confidentiality and secure handling of customer data.  \n\n---\n\n7. Data Privacy:\n- Swasthya collects personal and medical data only to provide the requested services.  \n- All data is handled in accordance with the Information Technology Act of 2000 and relevant Indian data protection laws.  \n- We do not share user data with third parties without explicit consent unless required by law.  \n\n---\n\n8. Limitations of Liability:\n- Swasthya is not liable for delays or failures caused by external factors like natural disasters, technical issues, or government regulations.  \n- Test results are for informational purposes only and should not replace professional medical advice.  \n\n---\n\n9. Dispute Resolution:\n- In case of disputes, the matter will be resolved under the jurisdiction of courts in Sikkim, India.  \n- Mediation is preferred before legal proceedings.  \n\n---\n\n10. Amendments to Terms:\n- Swasthya reserves the right to update these Terms and Conditions without prior notice.  \n- Users are encouraged to review this document periodically for changes.  \n\n---\n11. Contact Information:\nFor queries or concerns, contact us at:  \n- Email: \nswasthyagangtok@gmail.com\n- Phone: \n+91-8653670638\n- Address: Swasthya Pvt. Ltd., Gangtok, Sikkim, India  \n\n---\n\nBy using our services, you agree to these Terms and Conditions. If you do not agree, please refrain from using Swasthya services.  ',
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
