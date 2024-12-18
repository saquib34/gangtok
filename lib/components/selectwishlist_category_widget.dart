import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_drop_down.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import 'dart:ui';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'selectwishlist_category_model.dart';
export 'selectwishlist_category_model.dart';

class SelectwishlistCategoryWidget extends StatefulWidget {
  const SelectwishlistCategoryWidget({
    super.key,
    required this.wishlistRef,
    required this.inventoryRef,
  });

  final DocumentReference? wishlistRef;
  final DocumentReference? inventoryRef;

  @override
  State<SelectwishlistCategoryWidget> createState() =>
      _SelectwishlistCategoryWidgetState();
}

class _SelectwishlistCategoryWidgetState
    extends State<SelectwishlistCategoryWidget> {
  late SelectwishlistCategoryModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => SelectwishlistCategoryModel());

    WidgetsBinding.instance.addPostFrameCallback((_) => safeSetState(() {}));
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.max,
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        Container(
          width: double.infinity,
          height: 397.0,
          decoration: BoxDecoration(
            color: FlutterFlowTheme.of(context).secondaryBackground,
            borderRadius: BorderRadius.only(
              bottomLeft: Radius.circular(0.0),
              bottomRight: Radius.circular(0.0),
              topLeft: Radius.circular(20.0),
              topRight: Radius.circular(20.0),
            ),
          ),
          child: Padding(
            padding: EdgeInsetsDirectional.fromSTEB(24.0, 0.0, 24.0, 0.0),
            child: Column(
              mainAxisSize: MainAxisSize.max,
              children: [
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(0.0, 40.0, 0.0, 0.0),
                  child: Row(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Flexible(
                        child: Text(
                          'Select a test category',
                          textAlign: TextAlign.center,
                          style:
                              FlutterFlowTheme.of(context).bodyMedium.override(
                                    fontFamily: 'Inter',
                                    fontSize: 32.0,
                                    letterSpacing: 0.0,
                                    fontWeight: FontWeight.bold,
                                  ),
                        ),
                      ),
                    ],
                  ),
                ),
                Flexible(
                  child: Padding(
                    padding:
                        EdgeInsetsDirectional.fromSTEB(0.0, 25.0, 0.0, 0.0),
                    child: FlutterFlowDropDown<String>(
                      controller: _model.dropDownValueController ??=
                          FormFieldController<String>(null),
                      options: [
                        'Kidney Check',
                        'Liver Check',
                        'Diabetes Check',
                        'Heart Check',
                        'Arthritis Panel',
                        'Alcohol Risk Check',
                        'Fever Panel',
                        'Obesity Risk Check',
                        'PCOD',
                        'Thyroid Disorder',
                        'Vitamin Deficiency',
                        'Stress Check',
                        'Smokers Risk Check',
                        'Metabolic/Endocrine',
                        'Blood Disorders',
                        'Renal Disorders',
                        'Neuro',
                        'Gastro-intestinal/Skeletomuscular',
                        'Genomics',
                        'Pulmonary',
                        'Oncology',
                        'Autoimmune Diseases',
                        'Infections',
                        'Antenatal Profile',
                        'Dermatology/Autoimmune',
                        'Prenatal Screening',
                        'Profiles',
                        'Lifestyle Health Check Profiles',
                        'Hormonal Disorders',
                        'Reproductive Disorders',
                        'Hematology'
                      ],
                      onChanged: (val) async {
                        safeSetState(() => _model.dropDownValue = val);
                        await widget!.wishlistRef!
                            .update(createWishlistRecordData(
                          categories: _model.dropDownValue,
                        ));

                        await widget!.inventoryRef!.update({
                          ...mapToFirestore(
                            {
                              'wishlisters':
                                  FieldValue.arrayUnion([currentUserReference]),
                            },
                          ),
                        });
                        Navigator.pop(context);
                        ScaffoldMessenger.of(context).showSnackBar(
                          SnackBar(
                            content: Text(
                              'Test Added to Wishlist',
                              style: TextStyle(
                                color: FlutterFlowTheme.of(context)
                                    .secondaryBackground,
                              ),
                            ),
                            duration: Duration(milliseconds: 2000),
                            backgroundColor: Color(0xFF132450),
                          ),
                        );
                      },
                      width: double.infinity,
                      height: 50.0,
                      searchHintTextStyle:
                          FlutterFlowTheme.of(context).labelMedium.override(
                                fontFamily: 'Inter',
                                letterSpacing: 0.0,
                              ),
                      searchTextStyle:
                          FlutterFlowTheme.of(context).bodyMedium.override(
                                fontFamily: 'Inter',
                                letterSpacing: 0.0,
                              ),
                      textStyle:
                          FlutterFlowTheme.of(context).bodyMedium.override(
                                fontFamily: 'Inter',
                                letterSpacing: 0.0,
                              ),
                      hintText: 'Kidney Check',
                      searchHintText: 'Kidney Check',
                      icon: Icon(
                        Icons.keyboard_arrow_down_rounded,
                        color: FlutterFlowTheme.of(context).secondaryText,
                        size: 24.0,
                      ),
                      fillColor:
                          FlutterFlowTheme.of(context).secondaryBackground,
                      elevation: 2.0,
                      borderColor: Color(0xFF132450),
                      borderWidth: 2.0,
                      borderRadius: 8.0,
                      margin:
                          EdgeInsetsDirectional.fromSTEB(12.0, 0.0, 12.0, 0.0),
                      hidesUnderline: true,
                      isOverButton: false,
                      isSearchable: true,
                      isMultiSelect: false,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
