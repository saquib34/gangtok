import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'dart:ui';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'disclaimer_model.dart';
export 'disclaimer_model.dart';

class DisclaimerWidget extends StatefulWidget {
  const DisclaimerWidget({super.key});

  @override
  State<DisclaimerWidget> createState() => _DisclaimerWidgetState();
}

class _DisclaimerWidgetState extends State<DisclaimerWidget> {
  late DisclaimerModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => DisclaimerModel());

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
                  Row(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Padding(
                        padding:
                            EdgeInsetsDirectional.fromSTEB(0.0, 12.0, 0.0, 0.0),
                        child: Text(
                          'Disclaimer',
                          style:
                              FlutterFlowTheme.of(context).bodyMedium.override(
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
                  Padding(
                    padding:
                        EdgeInsetsDirectional.fromSTEB(0.0, 24.0, 0.0, 0.0),
                    child: Row(
                      mainAxisSize: MainAxisSize.max,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Flexible(
                          child: Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(
                                0.0, 0.0, 0.0, 24.0),
                            child: RichText(
                              textScaler: MediaQuery.of(context).textScaler,
                              text: TextSpan(
                                children: [
                                  TextSpan(
                                    text:
                                        'The information provided by *Swasthya* (“Company,” “we,” “our,” or “us”) on our website and through our services, including online blood collection and sample testing, is for general informational purposes only.  \n\n1. Not a Substitute for Professional Medical Advice: \n   - The results and reports generated by *Swasthya* are based on the samples provided by customers. These results are not intended to replace professional medical advice, diagnosis, or treatment. Always consult a qualified healthcare professional for interpretation of test results and medical decisions.\n\n2. Service Accuracy and Timeliness:\n   - While we strive to ensure accuracy in sample testing and timely delivery of results, *Swasthya* is not liable for any delays, errors, or inaccuracies caused by external factors such as transportation issues, sample handling, or unforeseen technical disruptions.\n\n3. User Responsibility:\n   - Customers are responsible for providing accurate personal and medical information during sample collection and registration. *Swasthya* is not accountable for errors resulting from incomplete or incorrect information provided by users.\n\n4. Third-Party Affiliations: \n   - In some cases, we may partner with third-party laboratories or service providers to conduct specific tests. *Swasthya* does not guarantee the quality or outcomes of tests conducted by third-party affiliates, though we strive to work with accredited partners.\n\n5. Data Privacy:\n   - We are committed to protecting your personal and medical data. However, by using our services, you acknowledge and agree that *Swasthya* cannot be held responsible for data breaches caused by external cyber threats beyond our reasonable control.\n\n6. Jurisdiction:\n   - *Swasthya* operates within the laws and regulations of the Indian State of Sikkim. Any disputes or claims arising from the use of our services shall be subject to the jurisdiction of the courts located in Sikkim.  \n\n7. Limitation of Liability:\n   - *Swasthya* shall not be held liable for any indirect, incidental, special, or consequential damages arising out of or in connection with the use of our services, even if we have been advised of the possibility of such damages.\n\nBy using our services, you agree to this Disclaimer. If you have any questions or concerns about the information provided here, please contact us at +91 8653670638.  \n\n---\n\n*Updated on: November 2024*  \n',
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
