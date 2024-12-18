import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'dart:ui';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'privacy_policy_model.dart';
export 'privacy_policy_model.dart';

class PrivacyPolicyWidget extends StatefulWidget {
  const PrivacyPolicyWidget({super.key});

  @override
  State<PrivacyPolicyWidget> createState() => _PrivacyPolicyWidgetState();
}

class _PrivacyPolicyWidgetState extends State<PrivacyPolicyWidget> {
  late PrivacyPolicyModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => PrivacyPolicyModel());

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
                          'Privacy Policy',
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
                                      'Effective Date: October 2024\n\nSwasthya (\"we,\" \"us,\" \"our\") is committed to protecting your privacy. This Privacy Policy outlines how we collect, use, disclose, and safeguard your information when you use our online blood collection and sample testing services. Please read this policy carefully to understand our views and practices regarding your personal data.\n\n---\n\n1. Information We Collect:  \nWe collect and process the following types of information:  \n\n1.1. Personal Information:\n- Name  \n- Contact details (phone number, email address, address)  \n- Date of birth  \n- Gender  \n- Identification proof (if applicable)  \n\n1.2. Health Information:  \n- Medical history relevant to sample testing  \n- Test results and related data  \n\n1.3. Usage Data:\n- IP address  \n- Browser type  \n- Pages visited and time spent  \n- Device details  \n\n1.4. Payment Information:\n- Payment methods and transaction details (processed via secure third-party payment gateways).  \n\n---\n\n2. How We Use Your Information:\nWe use the collected information to:  \n- Provide and manage our blood collection and testing services.  \n- Share test results securely with you and your authorized medical professionals.  \n- Improve user experience and enhance service quality.  \n- Respond to inquiries, complaints, or support requests.  \n- Comply with legal obligations and regulations.  \n\n---\n\n3. Sharing Your Information: \nWe may share your information with:  \n- Accredited laboratories and medical professionals for testing and analysis.  \n- Third-party service providers (e.g., IT support, payment gateways) under strict confidentiality agreements.  \n- Government authorities if required by law.  \n\n---\n\n4. Data Security: \nWe implement robust security measures to protect your personal data against unauthorized access, alteration, disclosure, or destruction. These measures include:  \n- Data encryption during transmission.  \n- Secure storage with limited access.  \n- Regular audits and system updates.  \n\n---\n\n5. Retention of Data:\nWe retain your personal and health information only as long as necessary for the purposes outlined in this policy or as required by law.  \n\n---\n\n6. Your Rights:\nUnder applicable laws, you have the following rights regarding your data:  \n- Access, update, or delete your personal information.  \n- Withdraw consent for data processing.  \n- File a complaint with the relevant regulatory authority.  \n\n---\n\n7. Cookies and Tracking Technologies:\nWe use cookies to improve functionality and enhance user experience. You can manage cookie preferences through your browser settings.  \n\n---\n\n8. Third-Party Links:\nOur website or app may contain links to third-party websites. We are not responsible for their privacy practices or content.  \n\n---\n\n9. Children’s Privacy:\nOur services are not intended for individuals under the age of 18. Parental consent is required for minors.  \n\n---\n\n10. Changes to This Privacy Policy:  \nWe may update this policy periodically. Changes will be communicated via email or our website.  \n\n---\n\n11. Contact Us:\nIf you have any questions or concerns about this Privacy Policy, please contact us at:  \n\nSwasthya\nDevelopment Area, Gangtok, East Sikkim,\n+91 8653670638  \nswasthyagangtok@gmail.com\n\n---\n\nThis Privacy Policy complies with the Information Technology Act, 2000, and related rules, including India’s Data Protection Bill (as applicable).',
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
                  Flexible(
                    child: Padding(
                      padding:
                          EdgeInsetsDirectional.fromSTEB(0.0, 24.0, 0.0, 0.0),
                      child: FFButtonWidget(
                        onPressed: () async {
                          context.pushNamed(
                            'alltestcategories',
                            extra: <String, dynamic>{
                              kTransitionInfoKey: TransitionInfo(
                                hasTransition: true,
                                transitionType: PageTransitionType.fade,
                                duration: Duration(milliseconds: 0),
                              ),
                            },
                          );
                        },
                        text: 'Explore Health Packages',
                        options: FFButtonOptions(
                          width: double.infinity,
                          height: 60.0,
                          padding: EdgeInsetsDirectional.fromSTEB(
                              16.0, 0.0, 16.0, 0.0),
                          iconPadding: EdgeInsetsDirectional.fromSTEB(
                              0.0, 0.0, 0.0, 0.0),
                          color: Color(0xFF132450),
                          textStyle:
                              FlutterFlowTheme.of(context).titleSmall.override(
                                    fontFamily: 'Questrial',
                                    color: Colors.white,
                                    letterSpacing: 0.0,
                                    fontWeight: FontWeight.w500,
                                  ),
                          elevation: 0.0,
                          borderRadius: BorderRadius.circular(100.0),
                        ),
                      ),
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
